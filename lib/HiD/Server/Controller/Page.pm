package HiD::Server::Controller::Page;

use 5.014; # strict, unicode_strings
use warnings;

use HiD::Server;
use Moose;
use Data::Printer;

extends 'HiD::Server::Controller';

sub index {
  my ($self, $env) = @_;

  $env->{PATH_INFO} = 'index.html';

  return $env->{PATH_INFO};
}

sub view {
  my ($req, $self, $page) = @_;

  p @_
}

1;
