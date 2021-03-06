# $NetBSD$
#

DISTNAME=		ncbi
PKGNAME=		ncbi-lib-${PKG_VER}
PKG_VER=		20060301
CATEGORIES=		biology
MASTER_SITES=		ftp://ftp.ncbi.nih.gov/toolbox/ncbi_tools/old/${PKG_VER}/

MAINTAINER=		mchittur@cs.nmsu.edu
HOMEPAGE=		http://www.ncbi.nlm.nih.gov/IEB/ToolBox/
COMMENT=		Portable, modular software for molecular biology

WRKSRC=			${WRKDIR}/ncbi
DIST_SUBDIR=		${PKGNAME_NOREV}

MAKE_ENV+=		PREFIX=${PREFIX:Q}

post-extract:
	${MV} ${WRKSRC}/make/makedis.csh ${WRKSRC}/make/makedis.csh.in

do-configure:
	${SED} -e 's:@PREFIX@:${PREFIX}:g' \
		-e 's:@X11BASE@:${X11BASE}:g' ${WRKSRC}/make/makedis.csh.in > ${WRKSRC}/make/makedis.csh
	${CHMOD} 755 ${WRKSRC}/make/makedis.csh

do-build:
	cd ${WRKSRC}/.. && ${SETENV} ${MAKE_ENV} ${CSH} ncbi/make/makedis.csh

do-install:
	@${ECHO} "Installing NCBI toolkit"
	@${ECHO} "Installing Lib"
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/ncbi
	@${CP} -fr ${WRKSRC}/lib/*  ${PREFIX}/lib/ncbi
	@${ECHO} "Installing include files"
	@${INSTALL_DATA_DIR} ${PREFIX}/include/ncbi
	@${INSTALL_DATA_DIR} ${PREFIX}/include/ncbi/connect
	@${CP} -fr ${WRKSRC}/include/*.h ${PREFIX}/include/ncbi
	@${CP} -fr ${WRKSRC}/connect/*.* ${PREFIX}/include/ncbi/connect/

.include "../../mk/motif.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.if ${X11_TYPE} == "native"
.include "../../mk/x11.buildlink3.mk"
.else
.include "../../x11/libX11/buildlink3.mk"
.endif
.include "../../mk/bsd.pkg.mk"
