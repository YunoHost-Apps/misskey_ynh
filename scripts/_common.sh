#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

NODEJS_VERSION="20"

#=================================================
# PERSONAL HELPERS
#=================================================

misskey_build() {
    pushd "$install_dir"
        ynh_use_nodejs
        corepack enable
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" pnpm install --frozen-lockfile
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" NODE_ENV=production pnpm build
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" pnpm run init
    popd

    ynh_secure_remove --file="$install_dir/.cache"
}

misskey_upgrade() {
    pushd "$install_dir"
        ynh_use_nodejs
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" pnpm clean-all
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" pnpm install --frozen-lockfile
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" NODE_ENV=production pnpm build
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" pnpm migrate
    popd

    ynh_secure_remove --file="$install_dir/.cache"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# REDIS HELPERS
#=================================================

# get the first available redis database
#
# usage: ynh_redis_get_free_db
# | returns: the database number to use
ynh_redis_get_free_db() {
    local result max db
    result="$(redis-cli INFO keyspace)"

    # get the num
    max=$(cat /etc/redis/redis.conf | grep ^databases | grep -Eow "[0-9]+")

    db=0
    # default Debian setting is 15 databases
    for i in $(seq 0 "$max")
    do
        if ! echo "$result" | grep -q "db$i"
        then
            db=$i
            break 1
        fi
        db=-1
    done

    test "$db" -eq -1 && ynh_die --message="No available Redis databases..."

    echo "$db"
}

# Create a master password and set up global settings
# Please always call this script in install and restore scripts
#
# usage: ynh_redis_remove_db database
# | arg: database - the database to erase
ynh_redis_remove_db() {
    local db=$1
    redis-cli -n "$db" flushall
}
