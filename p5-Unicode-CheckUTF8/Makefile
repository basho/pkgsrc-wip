# $NetBSD$
#

DISTNAME=       Unicode-CheckUTF8-1.03
PKGNAME=        p5-${DISTNAME}
CATEGORIES=     converters perl5
MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Unicode/}

MAINTAINER=     pkgsrc-users@NetBSD.org
HOMEPAGE=       http://search.cpan.org/dist/Unicode-CheckUTF8/
COMMENT=        Perl5 module to check if scalar is valid UTF-8
LICENSE=	generic-nonlicense

PKG_INSTALLATION_TYPES= overwrite pkgviews
PKG_DESTDIR_SUPPORT=    user-destdir

USE_LANGUAGES=	c
PERL5_PACKLIST=         auto/Unicode/CheckUTF8/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
