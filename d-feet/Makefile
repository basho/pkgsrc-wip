# $NetBSD$
#

DISTNAME=	d-feet-0.1.14
EGG_NAME=	${DISTNAME:S|d-|d_|}
PKGREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/d-feet/0.1/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-gnome@gmail.com
HOMEPAGE=	http://live.gnome.org/d-feet/
COMMENT=	D-Feet is a powerful dbus debugger
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none

PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX}

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_SED.paths+=	-e 's,/usr/share/dfeet,${PREFIX}/share/dfeet,g'
SUBST_SED.paths+=	-e 's,/usr/share/gnome/dfeet,${PREFIX}/share/gnome/dfeet,g'
SUBST_SED.paths+=	-e 's,/usr/share/dfeet/pixmaps,${PREFIX}/share/dfeet/pixmaps,g'
SUBST_SED.paths+=	-e 's,/usr/share/locale,${PREFIX}/share/locale,g'
SUBST_FILES.paths+=	d-feet${PYVERSSUFFIX}
SUBST_MESSAGE.paths=	Fixing header search paths.

post-extract:
	${MV} ${WRKSRC}/d-feet ${WRKSRC}/d-feet${PYVERSSUFFIX}

.include "../../devel/libwnck/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../devel/py-gobject/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
BUILDLINK_API_DEPENDS.py-dbus+=	${PYPKGPREFIX}-dbus>=0.23.4
.include "../../sysutils/py-dbus/buildlink3.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/omf-scrollkeeper.mk"
.include "../../mk/bsd.pkg.mk"
