 #!/usr/bin/perl

use lib('lib');
use DBI;
package utils::db;
use strict;
use Data::Dumper;
sub new
{
	my $class = ref($_[0])|| $_[0];
	return bless{},$class;
}

sub connectToDb
{

 my $dsn = 'dbi:mysql:user2';
 my $user = 'user2';
 my $password = 'tuser2';
 my $dbh = DBI->connect($dsn, $user, $password,{ RaiseError => 1, AutoCommit => 0 });
return $dbh;
	
}

 sub selectData
{
	my ($self,$dbh) = @_;
	my $hashData=();
	my $sth = $dbh->prepare("select * from Data");
	$sth->execute();
	while (my $hash = $sth->fetchrow_hashref) {
		   $hashData->{$hash->{key}}= $hash->{value};	
	}
	#print Dumper($hashData);
	$dbh->disconnect();
	return $hashData;
}

1

				     

