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
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" NODE_ENV=production yarn add ts-node webpack
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" NODE_ENV=production yarn build
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" NODE_ENV=production yarn run init
    popd

    ynh_secure_remove --file="$install_dir/.cache"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================
