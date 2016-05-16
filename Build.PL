use 5.008003;
use Module::Build;
use strict;
use warnings;

my $builder = Module::Build->new(
	module_name => 'Math::Fortran',

	dist_abstract => q(Implementations of Fortran's sign() and log10().),
	dist_author => [q{J. A. R. Williams},
			q{John M. Gamble <jgamble@cpan.org>}],
	dist_version => '0.03',
	dist_name => 'Math-Fortran',

	provides => {
		'Math::Fortran' => {
			file => 'lib/Math/Fortran.pm',
		},
	},

	requires => {
		perl => '5.8.3',
	},

	configure_requires => {
		'Module::Build' => '0.4',
	},

	build_requires => {
		'Test::Simple' => 0,
	},

	license => 'perl',
	create_license => 1,
	create_readme => 0,
	create_makefile_pl => 'traditional',
	dynamic_config => 0,
	release_status => 'stable',
	add_to_cleanup => [ 'Math-Fortran-*' ],

	meta_merge => {
		keywords => [qw(math log10 sign)],

		resources => {
			repository => 'git://github.com/jgamble/Math-Fortran',
#			repository => {
#				url => 'git://github.com/jgamble/Math-Fortran',
#				web => 'https://github.com/jgamble/Math-Fortran',
#				type => 'git',
#			},
		},
	},
);

$builder->create_build_script();

