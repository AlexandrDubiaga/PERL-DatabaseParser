#!/usr/bin/perl

use lib('lib');
package utils::Subtitors;
use strict;
use Data::Dumper;

sub new
 {
		 my $class = ref($_[0])|| $_[0];
		    return bless{},$class;
}


sub readFile
    {
	        my($self,$fileName) = @_;
		    my @data =();
			open my $fh, "< $fileName";
			while(<$fh>)
			{
				chomp($_);
				push @data, $_;
			}
			close($fh);
			return join ("\n",@data) unless(wantarray);
			return @data;
	}
1;
