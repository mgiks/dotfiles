is_using_system_version() {
    version="$(asdf current | grep golang | tr -s ' ' ' ' | awk '{print $2}')"
    [[ ${version} == 'system' ]] && return
}

asdf_update_golang_env() {
    is_using_system_version
    status=$?
    if (exit $status); then
        GOPATH=$GOPATH_REF
        GOROOT=$GOROOT_REF
        GOBIN=$GOBIN_REF
        return
    fi

    . ${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.bash
}
asdf_update_golang_env
