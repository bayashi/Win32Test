use Test::AllModules;

all_ok(
    search_path => 'Win32Test',
    use_ok      => 1,
    fork        => 0,
    shuffle     => 1,
);
