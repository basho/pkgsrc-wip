# $NetBSD: Makefile,v 1.64 2009/11/29 03:28:04 tnn Exp $

.include "../../wip/xulrunner/dist.mk"
PKGNAME=	firefox-${FIREFOX_VER}
CATEGORIES=	www

MAINTAINER=	tnn@NetBSD.org
HOMEPAGE=	http://www.mozilla.com/en-US/firefox/
COMMENT=	Web browser with support for extensions
LICENSE=	mpl-1.1

MOZILLA_DIR=	# empty

CONFIGURE_ARGS+=	--enable-application=browser
CONFIGURE_ARGS+=	--with-libxul-sdk=${PREFIX}/lib/xulrunner-sdk
CONFIGURE_ARGS+=	--with-system-libxul
# XXX tnn with omnijar enabled it just doesn't start
CONFIGURE_ARGS+=	--enable-chrome-format=flat

ALL_ENV+=		MOZILLA_PKG_NAME=firefox

.include "../../wip/xulrunner/mozilla-common.mk"
.include "options.mk"

MOZILLA=firefox
.if !empty(PKG_OPTIONS:Mofficial-mozilla-branding)
MOZILLA_NAME=	Firefox
MOZILLA_ICON=	${WRKSRC}/other-licenses/branding/firefox/default48.png
.else
MOZILLA_NAME=	Browser
MOZILLA_ICON=	${WRKSRC}/browser/branding/unofficial/default48.png
.endif

pre-configure:
	cd ${WRKSRC} && autoconf
# XXX not built here, just to make check-portability.awk shut up.
	cd ${WRKSRC}/js/src && autoconf

post-build:
	${SED} -e 's|@MOZILLA@|${MOZILLA}|g'				\
	  -e 's|@MOZILLA_NAME@|${MOZILLA_NAME}|g'			\
	  -e 's|@FIREFOX_ICON@|${MOZILLA}.png|g'			\
	  < ${FILESDIR}/desktop.in					\
	  > ${WRKDIR}/desktop
	${SED} -e 's|@PREFIX@|${PREFIX}|g' < ${FILESDIR}/firefox.sh.in	\
	  > ${WRKDIR}/firefox

INSTALLATION_DIRS+=	share/applications share/pixmaps
post-install:
	${INSTALL_DATA} ${WRKDIR}/desktop				\
	  ${DESTDIR}${PREFIX}/share/applications/${MOZILLA}.desktop
	${INSTALL_DATA} ${MOZILLA_ICON}					\
	  ${DESTDIR}${PREFIX}/share/pixmaps/${MOZILLA}.png
	rm -f ${DESTDIR}${PREFIX}/bin/firefox
	${INSTALL_SCRIPT} ${WRKDIR}/firefox ${DESTDIR}${PREFIX}/bin

BUILDLINK_API_DEPENDS.xulrunner+=	xulrunner>=${MOZ_BRANCH}${MOZ_BRANCH_MINOR}
BUILD_DEPENDS+=				xulrunner-${MOZ_BRANCH}${MOZ_BRANCH_MINOR}{,nb*}:../../wip/xulrunner
.include "../../wip/xulrunner/buildlink3.mk"
PLIST_VARS+=	gnome
.if !empty(PKG_BUILD_OPTIONS.xulrunner:Mgnome)
CONFIGURE_ARGS+=	--enable-gnomevfs --enable-dbus --enable-gnomeui
PLIST.gnome=	yes
.else
CONFIGURE_ARGS+=	--disable-gnomevfs --disable-dbus --disable-gnomeui
.endif
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
