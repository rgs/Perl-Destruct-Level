use 5.008;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    AUTHOR => 'Rafael Garcia-Suarez <rgs@consttype.org>',
    NAME => 'Perl::Destruct::Level',
    VERSION_FROM => 'Level.pm',
    LICENSE => 'perl',
    ABSTRACT => "Allow to change perl's destruction level",
);
