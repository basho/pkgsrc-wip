# $NetBSD$
#

DISTNAME=	EditObj2-0.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	http://download.gna.org/songwrite/

MAINTAINER=	pkgsrc-users@netbsd.org
HOMEPAGE=	http://home.gna.org/oomadness/en/editobj/index.html
COMMENT=	EditObj2 is a dialog box generator for Python objects
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# none
PYDISTUTILSPKG=         yes

do-test:
	${RUN} cd ${WRKSRC}/test; ${SETENV} ${TEST_ENV} ${PYTHONBIN} regtest.py


.include "../../devel/py-gobject/buildlink3.mk"
.include "../../x11/py-Tk/buildlink3.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../x11/py-qt4/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
