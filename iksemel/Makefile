# $NetBSD$
#

DISTNAME=	iksemel-1.3
PKGREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://iksemel.googlecode.com/files/

MAINTAINER=	jfranz@bsdprojects.net
HOMEPAGE=	http://code.google.com/p/iksemel/
COMMENT=	XML parser library mainly designed for Jabber applications

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
INFO_FILES=	yes

PKGCONFIG_OVERRIDE+=	iksemel.pc.in

.include "../../security/gnutls/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
