# $NetBSD$
#

DISTNAME=	nos-tun
PKGNAME=	nos-tun-20041005
CATEGORIES=	net
MASTER_SITES=	http://imil.net/NetBSD/

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://imil.net/NetBSD/
COMMENT=	The nos-tun utility is used to establish an nos style tunnel

PKG_INSTALLATION_TYPES=	overwrite pkgviews

ONLY_FOR_PLATFORM=	FreeBSD-*-* NetBSD-*-* OpenBSD-*-*

WRKSRC=		${WRKDIR}/nos-tun

INSTALLATION_DIRS=	sbin ${PKGMANDIR}/man8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nos-tun ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/nos-tun.8 ${PREFIX}/${PKGMANDIR}/man8/nos-tun.8

.include "../../mk/bsd.pkg.mk"
