package HiD::Server::Controller;

use 5.014; # strict, unicode_strings
use warnings;
use Moose;
use Data::Printer;

has hid => (
  is       => 'ro',
  isa      => 'HiD',
  handles  => [ qw/ get_config / ],
);

sub index {
  my ($req, $self, $env) = @_;

  return 'index';
}

sub view {
  my ($req, $self, $env) = @_;

  return 'viewing';
}

sub edit {
  my ($req, $self, $env) = @_;

  return 'editing';
}

1;
