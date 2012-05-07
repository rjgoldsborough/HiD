use strict;
use warnings;

package Test::HiD::Page;
use Test::Routine;
use Test::More;
use Test::File;
use namespace::autoclean;

use File::Temp qw/ tempfile tempdir /;
use HiD::Page;

has subject => (
  is  => 'ro' ,
  isa => 'HiD::Page' ,
);

test "output filename" => sub {
  my $test    = shift;
  my $subject = $test->subject;

  like( $subject->output_filename , qr|.html$| , 'ends in html' );
};

test "publish" => sub {
  my $test = shift;
  my $subject = $test->subject;

  my $output = $subject->output_filename;

  file_not_exists_ok( $output , 'no output yet' );
  $subject->publish;
  file_exists_ok( $output , 'and now output' );
};

1;