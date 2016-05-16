#!perl -T
use 5.008003;
use strict;
use warnings FATAL => 'all';
use Test::Simple tests => 1;


BEGIN {
    use_ok( 'Math::Fortran' ) || print "Bail out!\n";
}

diag( "Testing Math::Fortran $Math::Fortran::VERSION, Perl $], $^X" );
