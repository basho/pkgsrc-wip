# $NetBSD$
#

DISTNAME=	gnocchi-0.35
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnocchi/}

MAINTAINER=	MarkoSchuetz@web.de
HOMEPAGE=	http://www.muftor.com/Wikka/wikka.php?wakka=Gnocchi
COMMENT=	Complexity analyser for C++

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c c++

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
