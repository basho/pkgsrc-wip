# $NetBSD$
#

DISTNAME=		bluez-hciemu-1.2
CATEGORIES=		net
MASTER_SITES=		http://bluez.sourceforge.net/download/

MAINTAINER=		pancake@phreaker.net
HOMEPAGE=		http://www.bluez.org/
COMMENT=		HCI device emulator

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

.include "../../wip/bluez-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
