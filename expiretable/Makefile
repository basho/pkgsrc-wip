# $NetBSD$
#

DISTNAME=	expiretable-0.6
CATEGORIES=	net security
MASTER_SITES=	http://expiretable.fnord.se/

MAINTAINER=	bartosz.kuzma@gmail.com
HOMEPAGE=	http://expiretable.fnord.se/
COMMENT=	Removes entries from pf tables based on their age

PKG_DESTDIR_SUPPORT=	user-destdir

ONLY_FOR_PLATFORM=	DragonFly-*-* FreeBSD-[5-9]*-*
ONLY_FOR_PLATFORM+=	NetBSD-[3-9]*-* OpenBSD-[4-9]*-*

INSTALLATION_DIRS+=	sbin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/expiretable ${DESTDIR}${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/expiretable.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
