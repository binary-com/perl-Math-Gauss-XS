use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Math::Gauss::XS',
    AUTHOR             => q{Binary.com <support@binary.com>},
    VERSION_FROM       => 'lib/Math/Gauss/XS.pm',
    ( eval { ExtUtils::MakeMaker->VERSION(6.64) } ?
        (
            CONFIGURE_REQUIRES => {
                "ExtUtils::MakeMaker" => "6.64",
            },
            BUILD_REQUIRES => {
                'Test::More'  => 0,
            },
        ) : (
            PREREQ_PM => {
                "ExtUtils::MakeMaker" => '6.64',
                'Test::More'          => 0,
            },
        )
    ),
    ( eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
    ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ?
        (
            META_MERGE => {
                resources => {
                    repository => 'https://github.com/binary-com/perl-Math-Gauss-XS',
                },
            }
        ) : ()
    ),
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? ( MIN_PERL_VERSION => '5.8.1') : ()),
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Math-Gauss-XS*' },
);
