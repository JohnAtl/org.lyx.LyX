
#!/bin/sh

architecture_type=$(uname -m)
perl_version=$(perl -e "print substr($^V, 1)")

export PATH=/app/plugins/SweaveKnitr/bin:/app/plugins/LilyPond/bin:/app/texlive/bin:/app/texlive/bin/${architecture_type}-linux:${PATH}
export LD_LIBRARY_PATH=/app/texlive/lib:/app/texlive/lib/perl5/${perl_version}/${architecture_type}-linux/CORE
export PERL5LIB=/app/texlive/lib/perl5/${perl_version}:/app/texlive/lib/perl5/site_perl/${perl_version}
export ASPELL_CONF='dict-dir /app/share/dicts'


exec lyx "$@"
