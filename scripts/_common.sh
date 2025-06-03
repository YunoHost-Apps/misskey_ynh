#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

nodejs_version="22.11.0"

misskey_build() {
    pushd "$install_dir"

        ynh_hide_warnings ynh_exec_as_app NODE_ENV=production yarn add ts-node webpack
        ynh_hide_warnings ynh_exec_as_app NODE_ENV=production yarn build
        ynh_hide_warnings ynh_exec_as_app NODE_ENV=production yarn run init
    popd

    ynh_safe_rm "$install_dir/.cache"
}
