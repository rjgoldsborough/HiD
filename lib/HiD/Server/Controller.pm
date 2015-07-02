package HiD::Server::Controller;

use 5.014; # strict, unicode_strings
use warnings;
use Moose;

sub index {
  my ($self, $env) = @_;

  $env->{PATH_INFO} = 'index.html';

  return $self->SUPER::locate_file($env);
}

1;
