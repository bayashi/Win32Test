package Win32Test;
use strict;
use warnings;
use Carp qw/croak/;

our $VERSION = '0.01';

sub new {
    my $class = shift;
    my $args  = shift || +{};

    bless $args, $class;
}

1;

__END__

=encoding UTF-8

=head1 NAME

Win32Test - one line description


=head1 SYNOPSIS

    use Win32Test;


=head1 DESCRIPTION

Win32Test is


=head1 REPOSITORY

=begin html

<a href="https://github.com/bayashi/Win32Test/blob/master/LICENSE"><img src="https://img.shields.io/badge/LICENSE-Artistic%202.0-GREEN.png"></a> <a href="https://github.com/bayashi/Win32Test/actions"><img src="https://github.com/bayashi/Win32Test/workflows/build/badge.svg?branch=master"/></a> <a href="https://coveralls.io/r/bayashi/Win32Test"><img src="https://coveralls.io/repos/bayashi/Win32Test/badge.png?branch=master"/></a>

=end html

Win32Test is hosted on github: L<http://github.com/bayashi/Win32Test>

I appreciate any feedback :D


=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>


=head1 SEE ALSO

L<Other::Module>


=head1 LICENSE

C<Win32Test> is free software; you can redistribute it and/or modify it under the terms of the Artistic License 2.0. (Note that, unlike the Artistic License 1.0, version 2.0 is GPL compatible by itself, hence there is no benefit to having an Artistic 2.0 / GPL disjunction.) See the file LICENSE for details.

=cut
