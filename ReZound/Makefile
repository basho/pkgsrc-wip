# $NetBSD$
#

DISTNAME=		rezound-0.12.0beta
PKGREVISION=		2
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rezound/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://rezound.sourceforge.net/
COMMENT=		Audio editor with graphical interface

# needs real bison and not yacc
#BUILD_DEPENDS+= 	bison-[0-9]*:../../devel/bison

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-jack
CONFIGURE_ARGS+=	--enable-oss
CONFIGURE_ARGS+=	--enable-portaudio
CPPFLAGS+=		-DDEVOSSSOUND=\"${DEVOSSSOUND:Q}\"
#LDFLAGS+=		-lcompat
USE_TOOLS+=		flex gmake bison pkg-config
USE_LANGUAGES=		c c++
USE_PKGLOCALEDIR=	yes

PKG_SUPPORTED_OPTIONS=	alsa
PKG_OPTIONS_VAR=	PKG_OPTIONS.rezound

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Malsa)
CONFIGURE_ARGS+=	--enable-alsa=yes
.include "../../wip/alsa-lib/buildlink3.mk"
.else
CONFIGURE_ARGS+=	--disable-alsa
.endif

.include "../../audio/flac/buildlink3.mk"
.include "../../audio/lame/buildlink3.mk"
.include "../../audio/libaudiofile/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../audio/portaudio/buildlink3.mk"
.include "../../math/fftw2/buildlink3.mk"
.include "../../wip/libSoundTouch/buildlink3.mk"
.include "../../x11/fox/buildlink3.mk"

.include "../../mk/oss.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/x11.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
