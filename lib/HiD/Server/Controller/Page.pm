package HiD::Server::Controller::Page;

use 5.014; # strict, unicode_strings
use warnings;

use HiD::Server;
use Moose;
use Data::Printer;

extends 'HiD::Server::Controller';

sub index {
  my ($self, $env) = @_;

  p $self
}

sub view {
  my ($req, $self, $page) = @_;

  p $self; 
}

1;
