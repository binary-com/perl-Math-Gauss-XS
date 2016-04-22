package Math::Gauss::XS;
use warnings;
use strict;

our $VERSION = '0.01_1';

require Exporter;

our %EXPORT_TAGS = (
    'all' => [ qw(pdf cdf inv_cdf) ],
);

our @ISA = qw(Exporter);

our @EXPORT = qw( pdf cdf inv_cdf);

require XSLoader;
XSLoader::load('Math::Gauss::XS', $VERSION);

1;
