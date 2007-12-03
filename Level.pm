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

    my $current_destruct_level = Perl::Destruct::Level::get_destruct_level();

=head1 DESCRIPTION

=head1 CAVEATS

This module won't work when used from within an END block.

Loading the C<threads> module will set the destruction level to 2. (This
is to enable spawned threads to properly cleanup their objects.) Loading
modules that load C<threads>, even if they don't spawn threads, will
also set the destruction level to 2. (A common example of such a module
is C<Test::Builder>.)

=head1 AUTHOR

Copyright (c) 2007 Rafael Garcia-Suarez. This program is free software; you
may redistribute it and/or modify it under the same terms as Perl itself.

=head1 SEE ALSO

L<perlrun>, L<perlhack>

=cut
