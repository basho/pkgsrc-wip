# $NetBSD$

DISTNAME=		muscleframework-1.1.5
PKGNAME=		muscle-mcardplugin-1.1.5
PKGREVISION=		1
CATEGORIES=		security
MASTER_SITES=		http://alioth.debian.org/download.php/463/

MAINTAINER=	evaldo@gardenali.biz
HOMEPAGE=	http://www.linuxnet.com/
COMMENT=		MuscleCard applet plugin for the MUSCLE framework

WRKSRC=			${WRKDIR}/${DISTNAME}/MCardPlugin
GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
USE_TOOLS+=		gmake

CPPFLAGS+=		-I${LOCALBASE}/include/PCSC

CONFIGURE_ARGS+=	--enable-callback

CONTSRCDIR=	${WRKSRC}/src/mscMuscleCard.bundle/Contents/
CONTDIR=	${PREFIX}/lib/pcsc-lite/drivers/mscMuscleCard.bundle/Contents
CONTLIBDIR=	${CONTDIR}/${OPSYS}

.include "../../mk/bsd.prefs.mk"

do-install:
	${INSTALL_DATA_DIR} ${CONTDIR}
	${INSTALL_DATA} ${CONTSRCDIR}/Info.plist ${CONTDIR}
	${INSTALL_DATA} ${CONTSRCDIR}/PkgInfo ${CONTDIR}
	${INSTALL_DATA_DIR} ${CONTDIR}/Resources
	${INSTALL_DATA_DIR} ${CONTDIR}/Resources/English.lproj
	${INSTALL_DATA} \
		${CONTSRCDIR}/Resources/English.lproj/InfoPlist.strings \
		${CONTDIR}/Resources/English.lproj/InfoPlist.strings
	${INSTALL_LIB_DIR} ${CONTLIBDIR}
	libtool --mode=install ${INSTALL_LIB} ${WRKSRC}/src/libmusclecardApplet.la ${CONTLIBDIR}

.include "../../wip/libmusclecard/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
