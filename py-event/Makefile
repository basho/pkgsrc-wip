# $NetBSD$
#

DISTNAME=	pyevent-0.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=	devel
MASTER_SITES=	http://pyevent.googlecode.com/files/

MAINTAINER=	kamel.derouiche@gmail.com
HOMEPAGE=	http://code.google.com/p/pyevent/
COMMENT=	Python extension module for libevent
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir
PYDISTUTILSPKG= 	yes

do-test:
	cd ${WRKSRC} && ${PYTHONBIN} test.py

.include "../../devel/libevent/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
