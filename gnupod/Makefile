# $NetBSD$
#

DISTNAME=		gnupod-0.99.6
CATEGORIES=		multimedia
MASTER_SITES=		http://download.savannah.gnu.org/releases/gnupod/ \
			http://blinkenlights.ch/gnupod-dist/stable/
EXTRACT_SUFX=		.tgz

MAINTAINER=		shattered@users.sourceforge.net
HOMEPAGE=		http://www.gnu.org/software/gnupod/
COMMENT=		GNU iPod tools

DEPENDS+=		p5-Digest-MD5>=2.36:../../security/p5-Digest-MD5
DEPENDS+=		p5-Digest-SHA1>=2.11:../../security/p5-Digest-SHA1
DEPENDS+=		p5-XML-Parser>=2.36:../../textproc/p5-XML-Parser
DEPENDS+=		p5-Unicode-String>=2.09:../../converters/p5-Unicode-String
DEPENDS+=		p5-MP3-Info>=1.23:../../audio/p5-MP3-Info
DEPENDS+=		p5-libwww>=5.808:../../www/p5-libwww
DEPENDS+=		vorbis-tools>=1.1.1:../../audio/vorbis-tools
DEPENDS+=		timidity>=2.13.2nb2:../../audio/timidity

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		perl:run
INFO_FILES=		yes

.include "../../audio/faac/buildlink3.mk"
.include "../../audio/flac/buildlink3.mk"
.include "../../audio/lame/buildlink3.mk"
.include "../../multimedia/ffmpeg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
