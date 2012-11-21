use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
    license              => 'perl',
    dynamic_config       => 0,

    build_requires       => {
        'Test::More' => '0.98',
        'Test::Requires' => 0,
        'Test::Time'     => '0.04',
    },
    configure_requires   => { 'Module::Build' => '0.38' },
    requires             => {
        'parent'                        => '0',
        'Time::HiRes'                   => '0',
        'perl'                          => '5.008001',
    },

    no_index    => { 'directory' => [ 'inc' ] },
    name        => 'Cache-Memory-Simple',
    module_name => 'Cache::Memory::Simple',

    # script_files => [''],

    test_files => (-d '.git' || $ENV{RELEASE_TESTING}) ? 't/ xt/' : 't/',
    recursive_test_files => 1,
   
    create_readme  => 1,
    create_license => 1,
);
$build->create_build_script();
