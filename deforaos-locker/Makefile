# $NetBSD$

DISTNAME=	Locker-0.1.3
PKGNAME=	deforaos-locker-0.1.3
CATEGORIES=	x11
MASTER_SITES=	http://www.defora.org/os/download/download/3666/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	http://www.defora.org/
COMMENT=	DeforaOS desktop screensaver

LICENSE=	gnu-gpl-v3

USE_TOOLS+=	pkg-config

PKG_DESTDIR_SUPPORT=	user-destdir
MAKE_FLAGS+=	PREFIX=${PREFIX}
MAKE_FLAGS+=	DESTDIR=${DESTDIR}

.include "options.mk"

.include "../../wip/deforaos-libsystem/buildlink3.mk"
.include "../../wip/deforaos-libdesktop/buildlink3.mk"
.include "../../x11/libXScrnSaver/buildlink3.mk"
.include "../../wip/deforaos-panel/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
