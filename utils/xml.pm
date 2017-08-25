1 #!/usr/bin/perl

use lib('lib');
package utils::xml;
use strict;
use Data::Dumper;			    
sub new
{
	my $class = ref($_[0])|| $_[0];
	return bless{},$class;
}


1

