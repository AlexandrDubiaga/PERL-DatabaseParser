#!/usr/bin/perl

use strict;
use Data::Dumper;
use lib('lib');
use utils::File;
use utils::Subtitors;
use utils::Parser;
use utils::xml;
use utils::db;
my $sub = utils::Subtitors->new();
my $obj = utils::db->new();
my $getConnect = $obj->connectToDb();
my $select = $obj->selectData($getConnect);
print Dumper($select);
my $html = $sub->readFile('/usr/home/user2/PERL/task3/file.html');

#my $par = utils::Parser->new();
#my $list = $par->replace($select);
#print Dumper($list);
my $str = utils::File->new();
#my $html = $sub->readFile('/usr/home/user2/PERL/task3/file.html');
my $res = $str->file($html,$select);
print Dumper($res);





=head
my $sub = utils::Subtitors->new();
my @txt = $sub->readFile('/usr/home/user2/PERL/task3/file.txt');
my $html = $sub->readFile('/usr/home/user2/PERL/task3/file.html');

my $par = utils::Parser->new();
my $list = $par->replace(@txt);
#print Dumper($list);
my $str = utils::File->new();
my $res = $str->file($html,$list);
print Dumper($res);

=cut;


