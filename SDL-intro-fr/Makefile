# $NetBSD$
#

DISTNAME=		SDL-1.0-french-intro
PKGNAME=		SDL-intro-fr-1.0
PKGREVISION=		1
CATEGORIES=		devel
MASTER_SITES=	http://www.libsdl.org/archives/

MAINTAINER=		ianzag@mail.ru
HOMEPAGE=		http://www.libsdl.org/docs.php
COMMENT=		Simple DirectMedia Layer introduction (French)

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/intro.fr
DEST=			${PREFIX}/share/doc/SDL-intro/fr

NO_CONFIGURE=	YES
NO_BUILD=		YES

# Remove links
post-patch:
	${RM} ${WRKSRC}/index.html

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${DEST}
	${INSTALL_DATA} ${WRKSRC}/*.html ${DESTDIR}${DEST}
	${LN} -s ${DEST}/tocfr.html ${DESTDIR}${DEST}/index.html

.include "../../mk/bsd.pkg.mk"
