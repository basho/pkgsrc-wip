# $NetBSD: Makefile,v 1.26 2010/06/28 10:09:26 joerg Exp $
#

PKGNAME=		amanda-plot-${VERS}
SVR4_PKGNAME=		amapl

COMMENT=		Visualizes the behavior of Amanda, a network backup system

PKG_DESTDIR_SUPPORT=	destdir

DEPENDS+=		gnuplot{,-nox11}>=3.7:../../graphics/gnuplot-nox11
DEPENDS+=		amanda-server>=3.1.*:../../wip/amanda3-server


.include "../../mk/bsd.prefs.mk"
.include "../../wip/amanda3-common/Makefile.common"

EVAL_PREFIX+=		GNUPLOTDIR=gnuplot
CONFIGURE_ARGS+=	--without-client
CONFIGURE_ARGS+=	--without-server
CONFIGURE_ARGS+=	--without-restore
CONFIGURE_ARGS+=	--without-amrecover
CONFIGURE_ARGS+=	--with-amplot
CONFIGURE_ARGS+=	--with-gnuplot="${GNUPLOTDIR}/bin/gnuplot"

.include "../../mk/bsd.pkg.mk"
