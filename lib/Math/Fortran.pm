# $Id: Fortran.pm,v 1.1 1995/12/26 09:43:01 willijar Exp $
=head1 NAME

    Math::Fortran - Perl implimentations of Fortrans sign and log10

=head1 SYNOPSIS

    use Math::Fortran qw(log10 sign);
    $v=log10($x);
    $v=sign($y);
    $v=sign($x,$y);

=head1 DESCRIPTION

This module provides and exports some mathematical functions which are
built in in Fortran but not in Perl. Currently there are only 2 included.

=over

=item B<log10()>

Log to the base of 10

=item B<sign()>

With 1 parameter, +1 if $y >= 0, -1 otherwise. With 2 parameters +abs($x) if $y >= 0, -abs($x) otherwise.

=back

=head1 BUGS

I welcome other entries for this module and bug reports.

=head1 AUTHOR

John A.R. Williams B<J.A.R.Williams@aston.ac.uk>

John M. Gamble B<jgamble@cpan.org> (current maintainer)

=cut

require Exporter;
package Math::Fortran;
@ISA=qw(Exporter);
@EXPORT_OK=qw(sign log10);
use strict;

our $VERSION = 0.02;

sub log10 { log($_[0])/log(10); }

sub sign {
    my ($a1,$a2)=@_;
    if (defined $a2) {
	return $a2>=0 ? abs($a1):-abs($a1);
    }
    return $a1>=0 ? +1 : -1;
}

1;
