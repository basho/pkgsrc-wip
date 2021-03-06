# $NetBSD: Makefile,v 1.43 2006/03/04 21:28:54 jlam Exp $

DISTNAME=		audacity-src-1.3.0b
PKGNAME=		${DISTNAME:S/-src-/-/}
PKGREVISION=		4
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=audacity/}

MAINTAINER=		ghen@NetBSD.org
HOMEPAGE=		http://audacity.sourceforge.net/
COMMENT=		Audio editor

DEPENDS+=		zip>=0.0:../../archivers/zip

WRKSRC=			${WRKDIR}/${DISTNAME}-beta

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		autoconf gmake msgfmt pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--without-xaudio
CONFIGURE_ARGS+=	--with-id3=system
CONFIGURE_ARGS+=	--with-libflac=system
CONFIGURE_ARGS+=	--with-libmad=system
CONFIGURE_ARGS+=	--with-libsndfile=system
CONFIGURE_ARGS+=	--with-portaudio=system
CONFIGURE_ARGS+=	--with-vorbis=system

CONFIG_GUESS_OVERRIDE=		\
	config.guess */config.guess */*/config.guess */*/*/config.guess
CONFIG_SUB_OVERRIDE=		\
	config.sub */config.sub */*/config.sub */*/*/config.sub

.include "../../audio/flac/buildlink3.mk"
.include "../../audio/lame/buildlink3.mk"
.include "../../audio/libid3tag/buildlink3.mk"
.include "../../audio/libmad/buildlink3.mk"
.include "../../audio/libsndfile/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../audio/portaudio/buildlink3.mk"
.include "../../databases/shared-mime-info/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../x11/wxGTK26/buildlink3.mk"

.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# XXX Internal compiler error with -O2
.if ${MACHINE_ARCH} == "alpha"
CFLAGS+=	-O
.endif
