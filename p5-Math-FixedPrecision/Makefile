# $NetBSD: Makefile,v 1.2 2005/04/11 21:46:30 tv Exp $
#

DISTNAME=	Math-FixedPrecision-0.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}

MAINTAINER=	geeogeegeeoh@users.sourceforge.net
COMMENT=	Perl module that provides decimal math without floating point errors

PKG_DESTDIR_SUPPORT= user-destdir

REPLACE_PERL+=	FixedPrecision.pm
REPLACE_PERL+=	t/test.t

DEPENDS+=	p5-Math-BigInteger-*:../../math/p5-Math-BigInteger

PERL5_PACKLIST= auto/Math/FixedPrecision/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"

