# $NetBSD$
#

DISTNAME=	ubuntu-font-family-0.80
PKGNAME=	${DISTNAME:S/family-/ttf-/}
CATEGORIES=	fonts
MASTER_SITES=	http://font.ubuntu.com/download/
EXTRACT_SUFX=	.zip

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://font.ubuntu.com/
COMMENT=	Ubuntu font family
#LICENSE=	UBUNTU FONT LICENCE Version 1.0

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/${DISTNAME:S/.orig//:S/_/-/}
USE_LANGUAGES=	# none

USE_X11BASE=	YES
NO_CONFIGURE=	YES
NO_BUILD=	YES

DOCSDIR=	${PREFIX}/share/doc/${PKGBASE}

INSTALLATION_DIRS=	lib/X11/fonts/TTF \
			${DOCSDIR}

FONTDIR=	${PREFIX}/lib/X11/fonts/TTF
FONTS_DIRS.ttf=	${FONTDIR}

INSTALL_FONTS=	Ubuntu-B.ttf \
		Ubuntu-BI.ttf \
		Ubuntu-C.ttf \
		Ubuntu-L.ttf \
		Ubuntu-LI.ttf \
		Ubuntu-M.ttf \
		Ubuntu-MI.ttf \
		Ubuntu-R.ttf \
		Ubuntu-RI.ttf \
		UbuntuMono-B.ttf \
		UbuntuMono-BI.ttf \
		UbuntuMono-R.ttf \
		UbuntuMono-RI.ttf

INSTALL_DOCS=	CONTRIBUTING.txt \
		FONTLOG.txt \
		LICENCE-FAQ.txt \
		LICENCE.txt \
		README.txt \
		TRADEMARKS.txt \
		copyright.txt

do-install:
.for fontfile in ${INSTALL_FONTS}
	${INSTALL_DATA} ${WRKSRC}/${fontfile} ${DESTDIR}${FONTDIR}
.endfor
.for docfile in ${INSTALL_DOCS}
	${INSTALL_DATA} ${WRKSRC}/${docfile} ${DESTDIR}${DOCSDIR}
.endfor


.include "../../mk/bsd.pkg.mk"
