# $NetBSD$
#

DISTNAME=	libdssialsacompat-1.0.8a
CATEGORIES=	audio
MASTER_SITES=	http://home.jps.net/~musound/

MAINTAINER=	jfranz@bsdprojects.net
HOMEPAGE=	http://home.jps.net/~musound/
COMMENT=	Alsa compatibility library to build DSSI

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES+= c

INSTALLATION_DIRS=	include/dssi/alsa/sound
PKGCONFIG_OVERRIDE+=	libdssialsacompat.pc.in

.include "../../mk/bsd.pkg.mk"
