$CPAN::Config = {
         'allow_installing_module_downgrades' => q[no],
         'allow_installing_outdated_dists'    => q[no],
         'auto_commit'                        => q[0],
         'build_cache'                        => q[100],
         'build_dir' => qq[$ENV{CETPKG_BUILD}/$ENV{CET_SUBDIR}/.cpan/build],
         'build_dir_reuse'               => q[0],
         'build_requires_install_policy' => q[yes],
         'cache_metadata'                => q[1],
         'check_sigs'                    => q[0],
         'cleanup_after_install'         => q[1],
         'commandnumber_in_prompt'       => q[0],
         'connect_to_internet_ok'        => q[0],
         'cpan_home'       => qq[$ENV{CETPKG_BUILD}/$ENV{CET_SUBDIR}],
         'ftp_passive'     => q[1],
         'ftp_proxy'       => q[],
         'getcwd'          => q[cwd],
         'halt_on_failure' => q[1],
         'histfile' => qq[$ENV{CETPKG_BUILD}/$ENV{CET_SUBDIR}/.cpan/histfile],
         'histsize' => q[20000],
         'http_proxy'              => q[],
         'inactivity_timeout'      => q[20],
         'index_expire'            => q[1],
         'inhibit_startup_message' => q[1],
         'keep_source_where'       =>
         qq[$ENV{CETPKG_BUILD}/$ENV{CET_SUBDIR}/.cpan/sources],
         'load_module_verbosity'        => q[none],
         'make_arg'                     => q[],
         'make_install_arg'             => q[],
         'makepl_arg'                   => q[],
         'mbuild_arg'                   => q[],
         'mbuild_install_arg'           => q[],
         'mbuild_install_build_command' => q[./Build],
         'mbuildpl_arg'                 => q[],
         'no_proxy'                     => q[],
         'pager'                        => q[less],
         'perl5lib_verbosity'           => q[none],
         'prefer_external_tar'          => q[1],
         'prefer_installer'             => q[MB],
         'prefs_dir' => qq[$ENV{CETPKG_BUILD}/$ENV{CET_SUBDIR}/.cpan/prefs],
         'prerequisites_policy'      => q[follow],
         'pushy_https'               => q[1],
         'recommends_policy'         => q[1],
         'scan_cache'                => q[atstart],
         'shell'                     => q[/bin/bash],
         'show_unparsable_versions'  => q[0],
         'show_upload_date'          => q[0],
         'show_zero_versions'        => q[0],
         'suggests_policy'           => q[0],
         'tar_verbosity'             => q[none],
         'term_is_latin'             => q[1],
         'term_ornaments'            => q[1],
         'test_report'               => q[0],
         'trust_test_report_history' => q[0],
         'urllist'                   => [q[http://www.cpan.org/]],
         'use_prompt_default'        => q[0],
         'use_sqlite'                => q[1],
         'version_timeout'           => q[15],
         'yaml_load_code'            => q[1],
         'yaml_module'               => q[YAML],
};

########################################################################
1;
__END__
