use strict;
use warnings;
use Benchmark qw(:all);
use Math::Gauss::XS;
use Math::Gauss;

timethese(
    30_000_000,
    {
        'pp/pdf' => sub { Math::Gauss::pdf(1, 0.5, 0.1) },
        'xs/pdf' => sub { Math::Gauss::XS::pdf(1, 0.5, 0.1) },
    });

timethese(
    30_000_000,
    {
        'pp/cdf' => sub { Math::Gauss::cdf(1, 0.5, 0.1) },
        'xs/cdf' => sub { Math::Gauss::XS::cdf(1, 0.5, 0.1) },
    });

timethese(
    30_000_000,
    {
        'pp/inv_cdf' => sub { Math::Gauss::inv_cdf(0.2) },
        'xs/inv_cdf' => sub { Math::Gauss::XS::inv_cdf(0.2) },
    });

