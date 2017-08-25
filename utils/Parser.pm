#!/usr/bin/perl

use lib('lib');
package utils::Parser;
use strict;
use Data::Dumper;

sub new
{
	my $class = ref($_[0])|| $_[0];
	return bless{},$class;
}

sub replace {
	        my ($self,$data) = @_;
	           my %layaus = ();
		          #print Dumper(\@data);
			         while($data)
				        {
					    my $line =  shift $data;
						my($key,$value) = split(' => ',$line);
						$layaus{$key} = $value if($key);
						}
						return \%layaus;			     
     }
1
