package Perl::Destruct::Level;

use strict;
use warnings;
use XSLoader ();

our $VERSION = '0.01';

XSLoader::load 'Perl::Destruct::Level', $VERSION;

sub import {
    shift;
    my %p = @_;
    set_destruct_level($p{level}) if exists $p{level};
}

1;

__END__

=head1 NAME

Perl::Destruct::Level - Allow to change perl's destruct level

=head1 SYNOPSIS

    use Perl::Destruct::Level level => 1;

=head1 DESCRIPTION

=head1 AUTHOR

Copyright (c) 2007 Rafael Garcia-Suarez. This program is free software; you
may redistribute it and/or modify it under the same terms as Perl itself.

=head1 SEE ALSO

L<perlrun>

=cut
