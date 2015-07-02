package HiD::Server::Model;

use 5.014; # strict, unicode_strings
use warnings;
use Moose;

has page => (
  traits   => ['HiD::Server'],
  is       => 'ro',
  isa      => 'HiD::Page',
  default  => 0,
  handles  => {
    view => 'view',
    edit => 'edit'
  },
);

1;
