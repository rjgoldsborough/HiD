# ABSTRACT: Helper for 'hid server'

=head1 DESCRIPTION

Helper for C<hid server>

=cut

package HiD::Server;

use 5.014; # strict, unicode_strings
use warnings;

use OX;

has hid => (
  is       => 'ro',
  isa      => 'HiD',
  required => 1,
  handles  => [ qw/ get_config / ],
);


has page => (
  is    => 'ro',
  isa   => 'HiD::Server::Controller::Page',
);

router as {
  route '/' => 'page.index',
  route '/:page' => 'page.view',
  route '/:page/edit' => 'page.edit',
  # route '/notebook/:year/:month/:day/:article' => 'article.view'
};

1;
