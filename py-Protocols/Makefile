# $NetBSD$
#

DISTNAME=	PyProtocols-0.9.3
PKGNAME=		${PYPKGPREFIX}-${DISTNAME:S/Py//}
CATEGORIES=	devel
MASTER_SITES=	http://peak.telecommunity.com/dist/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://peak.telecommunity.com/PyProtocols.html
COMMENT=		Lets you easily define your own protocols and adapters

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	zope3>=3.3.1:../../www/zope3

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
