# $NetBSD$
#

LICENSE=		gnu-gpl-v2 AND gnu-lgpl-v2

LIBGDA_PROVIDER=	bdb
PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../databases/libgda/Makefile.common"

BDB_ACCEPTED=	db4

SUBST_CLASSES+=		bdb
SUBST_STAGE.bdb= 	post-patch
SUBST_FILES.bdb= 	providers/bdb/Makefile.in
SUBST_SED.bdb=		-e "s|@BDB_LIBS@|${BDB_LIBS}|"
SUBST_MESSAGE.bdb=	Fixing bdb.

CONFIGURE_ARGS+=	--with-bdb=${PREFIX}

.include "../../mk/bdb.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
