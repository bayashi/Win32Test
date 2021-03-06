use strict;
use warnings;
use Module::Build;

my %win_build_requires = ();

if ($^O eq 'MSWin32') {
    %win_build_requires = (
        'Win32' => 0
    );
}

my $builder = Module::Build->new(
    name                => 'Win32Test',
    module_name         => 'Win32Test',
    license             => 'artistic_2',
    dist_author         => 'Dai Okabayashi <bayashi@cpan.org>',
    dist_version_from   => 'lib/Win32Test.pm',
    add_to_cleanup      => [ 'Win32Test-*' ],
    configure_requires  => {
        'Module::Build' => 0.40,
    },
    test_requires => {
        'Test::More' => '1.3',
        'Test::AllModules' => '0.17',
        %win_build_requires,
    },
    requires => {
        'perl' => '5.008005',
        'strict' => 0,
        'warnings' => 0,
        'Carp' => 0,
        'Module::Pluggable::Object' => 0,
    },
    meta_merge     => {
      resources => {
        repository  => 'http://github.com/bayashi/Win32Test',
        bugtracker  => 'http://github.com/bayashi/Win32Test/issues',
      }
    },
    recursive_test_files => 1,
    test_files => (-d '.git' || $ENV{RELEASE_TESTING}) ? ['t/', 'xt/'] : ['t/'],
    create_license => 1, # https://metacpan.org/pod/Software::License
);

$builder->create_build_script();
