# $NetBSD$
#

DISTNAME=	mixer.tk-0.4
CATEGORIES=	audio
MASTER_SITES=	http://gnorw.net/netbsd/

MAINTAINER=	jaka.jejcic@gmail.com
HOMEPAGE=	
COMMENT=	Tcl/Tk audio mixer using mixerctl utility

NO_CONFIGURE=	yes
NO_BUILD=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mixer.tk ${PREFIX}/bin

.include "../../x11/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

