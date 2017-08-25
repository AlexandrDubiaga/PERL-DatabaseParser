#!/usr/bin/perl

use lib('lib');
package utils::File;
use strict;
use Data::Dumper;

sub new
{
my $class = ref($_[0])|| $_[0];
return bless{},$class;
}

sub file
{
	my($self,$html,$list) =@_;
	$html =~ s/(\%LANG_\w+)/$list->{$1}/gse;
	return $html;

}
1;
