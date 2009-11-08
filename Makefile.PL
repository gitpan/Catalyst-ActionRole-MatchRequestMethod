
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-ActionRole-MatchRequestMethod',
  NAME      => 'Catalyst::ActionRole::MatchRequestMethod',
  AUTHOR    => "Florian\ Ragwitz\ \<rafl\@debian\.org\>",
  ABSTRACT  => "Dispatch\ actions\ based\ on\ HTTP\ request\ methods",
  VERSION   => '0.01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0.89',
    "Moose::Role" => '0',
    "namespace::autoclean" => '0',
    "Catalyst::Controller::ActionRole" => '0',
    "Catalyst::Runtime" => '0',
    "Perl6::Junction" => '0',
    "HTTP::Request::Common" => '0',
  },
  test => {TESTS => 't/*.t'}
);

