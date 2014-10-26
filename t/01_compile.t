#!/usr/bin/perl -w

# Compile-testing for File::HomeDir

use strict;
use lib ();
use File::Spec::Functions ':ALL';
BEGIN {
	$| = 1;
	unless ( $ENV{HARNESS_ACTIVE} ) {
		require FindBin;
		$FindBin::Bin = $FindBin::Bin; # Avoid a warning
		chdir catdir( $FindBin::Bin, updir() );
		lib->import('blib', 'lib');
	}
}

use Test::More tests => 5;

ok( $] > 5.005, 'Perl version is 5.005 or newer' );

use_ok( 'SMS::Send'           );
use_ok( 'SMS::Send::Driver'   );
use_ok( 'SMS::Send::Test'     );
use_ok( 'SMS::Send::AU::Test' );

exit(0);
