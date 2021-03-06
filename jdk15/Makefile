# $NetBSD$

.include "../../wip/jdk16/Makefile.common"

JDK_VERSION=		1.5.0
JDK_UPDATE=		16
# If updating, please check if patch-ar is still needed. (introduced in patch8)
JDK_PATCHSET_VERSION=	9
JDK_VERSION_STRING=	b02-jrl-28_may_2008

DISTNAME=		jdk-${JDK_VERSION:S/./_/g}_${JDK_UPDATE}
PKGNAME=	jdk15-${JDK_VERSION}.${JDK_UPDATE}.${JDK_PATCHSET_VERSION}
PKGREVISION=		1
MASTER_SITES+=		# http://download.java.net/tiger/archive/tiger_u${JDK_UPDATE}/
MASTER_SITES+=		# http://www.eyesbeyond.com/freebsddom/java/jdk15.html
DISTFILES=		${JRL_SRCFILE} ${JRL_BINFILE} ${PATCHSETFILE} ${SOL_BINFILE}
EXTRACT_ONLY=	${JRL_SRCFILE} ${JRL_BINFILE} ${PATCHSETFILE}

RT_JAR=			SUNWj5rt/reloc/jdk/instances/jdk1.5.0/jre/lib/rt.jar
TOOLS_JAR=		SUNWj5dev/reloc/jdk/instances/jdk1.5.0/lib/tools.jar

COMMENT=		Java Development Kit ${JDK_VERSION}
LICENSE=		sun-jrl-16-license

MAKE_JOBS_SAFE=		no
USE_TOOLS+=		patch pax
WRKSRC=			${WRKDIR}

JAVA_NAME=		jdk15
JAVA_WRAPPERS=		appletviewer jar java javac javadoc javah javap

.if exists(${PREFIX}/java/jdk-1.6.0/bin/javac) && defined(NOT_YET)
BUILD_DEPENDS+=		jdk16>=1:../../wip/jdk16
ALT_BOOTDIR=		${PREFIX}/java/jdk-1.6.0
.elif exists(${PREFIX}/java/jdk-1.5.0/bin/javac)
#don't depend on my myself
#BUILD_DEPENDS+=	jdk15>=1
ALT_BOOTDIR=		${PREFIX}/java/jdk-1.5.0
.elif exists(${PREFIX}/java/sun-6/bin/javac) && defined(NOT_YET)
BUILD_DEPENDS+=		sun-jdk6>=1:../../lang/sun-jdk6
ALT_BOOTDIR=		${PREFIX}/java/sun-6
.else
BUILD_DEPENDS+=		kaffe>=1.1:../../lang/kaffe
ALT_BOOTDIR=		${WRKSRC}
ALT_BOOTDIR2=		${PREFIX}/java/kaffe
.endif

BUILD_DEPENDS+=		unzip>=6.0:../../archivers/unzip
BUILD_DEPENDS+=		libxslt>=1.1:../../textproc/libxslt

.if !empty(MAKE_ENV:M*/java/sun-*) && !exists(/emul/linux/proc/uptime) && !exists(/proc/uptime)
PKG_FAIL_REASON=	"If bootstrapping with Linux JDK,"
PKG_FAIL_REASON+=	"then /emul/linux/proc must be mounted. Run:"
PKG_FAIL_REASON+=	"mount -o linux -t procfs /dev/null /emul/linux/proc"
.endif

# used to find "zip" and "unzipsfx"
MAKE_FLAGS+=		M4=${M4:Q}
MAKE_FLAGS+=		ALT_DEVTOOLS_PATH=${PREFIX}/bin
MAKE_FLAGS+=		ALT_COMPILER_PATH=${WRAPPER_BINDIR:Q}
MAKE_ENV+=		LANG=C
MAKE_ENV+=		JAVA_HOME=
MAKE_ENV+=		CLASSPATH=
MAKE_ENV+=		ALT_MOTIF_DIR=${MOTIFBASE:Q}
MAKE_ENV+=		DEV_ONLY=YES
MAKE_ENV+=		SYS_CFLAGS=${CFLAGS:Q}
MAKE_ENV+=		LD_LIBRARY_PATH=
MAKE_ENV+=		SKIP_COMPARE_IMAGES=YES
MAKE_ENV+=		ALT_BOOTDIR=${ALT_BOOTDIR}
MAKE_ENV+=		ALT_BOOTDIR2=${ALT_BOOTDIR2}
MAKE_ENV+=		ALT_BOOTSTRAP=yes
MAKE_ENV+=		ABS_OUTPUTDIR=${OUTPUTDIR}
MAKE_ENV+=		HOTSPOT_BUILD_JOBS=${MAKE_JOBS}
MAKE_ENV+=		OUTPUTDIR=${OUTPUTDIR}
MAKE_ENV+=		DONT_BUILD_DOCS="YES"
MAKE_ENV+=		BUILD_PLUGIN=false

# MAKE_ENV+=		WRAPPER_DEBUG=yes

JRL_SRCFILE=		${DISTNAME}-fcs-src-${JDK_VERSION_STRING}.jar
JRL_BINFILE=		${DISTNAME}-fcs-bin-${JDK_VERSION_STRING}.jar
PATCHSETFILE=		bsd-jdk15-patches-${JDK_PATCHSET_VERSION}.tar.bz2
SOL_BINFILE=		${DISTNAME}-solaris-i586.tar.Z

JRL_DOWNLOAD=	http://download.java.net/tiger/tiger_u${JDK_UPDATE}/
PATCH_DOWNLOAD=	http://www.eyesbeyond.com/freebsddom/java/JDK15JRLConfirm.html

# Use JAVA_MACHINE_ARCH rather than MACHINE as we would want to share
# at a MACHINE_ARCH level if we ever build for powerpc or mips
JAVA_MACHINE_ARCH=${MACHINE_ARCH}
.if ${MACHINE_ARCH} == "i386"
OUTPUTDIR=			${WRKDIR}/control/build/bsd-${MACHINE_ARCH:S/i386/i586/}
JDKIMAGEDIR=		${WRKDIR}/${BUILD_DIRS}/../build/bsd-i586/j2sdk-image
# JDKIMAGEDIR_G=	${WRKDIR}/${BUILD_DIRS}/../build/bsd-i586/j2sdk-debug-image
.elif ${MACHINE_ARCH} == "x86_64"
JAVA_MACHINE_ARCH=	amd64
OUTPUTDIR=			${WRKDIR}/control/build/bsd-${JAVA_MACHINE_ARCH}
JDKIMAGEDIR=		${WRKDIR}/${BUILD_DIRS}/../build/bsd-amd64/j2sdk-image
# JDKIMAGEDIR_G=	${WRKDIR}/${BUILD_DIRS}/../build/bsd-amd64/j2sdk-debug-image
.endif

FETCH_MESSAGE+= " The source and patches for the Java (tm) 2 SDK require"
FETCH_MESSAGE+= " a Sun Java Research License, and cannot be"
FETCH_MESSAGE+= " fetched automatically."
FETCH_MESSAGE+= ""
FETCH_MESSAGE+= " Please download the JDK 5.0 JRL Source (${JRL_SRCFILE})"
FETCH_MESSAGE+= " and JRL Binaries (${JRL_BINFILE}) for J2SE from:"
FETCH_MESSAGE+= "       ${JRL_DOWNLOAD}"
FETCH_MESSAGE+= " and place them as:"
FETCH_MESSAGE+= "       ${DISTDIR}/${JRL_SRCFILE}"
FETCH_MESSAGE+= "       ${DISTDIR}/${JRL_BINFILE}"
FETCH_MESSAGE+= ""
FETCH_MESSAGE+= " Please download the BSD JDK 1.5 Patchset ${JDK_PATCHSET_VERSION}"
FETCH_MESSAGE+= " (${PATCHSETFILE}) from:"
FETCH_MESSAGE+= "      ${PATCH_DOWNLOAD}"
FETCH_MESSAGE+= " and place it as:"
FETCH_MESSAGE+= "      ${DISTDIR}/${PATCHSETFILE}"
FETCH_MESSAGE+= ""
FETCH_MESSAGE+= " Then resume this build by running '"${MAKE:Q}"' again."

FETCH_MESSAGE+=	"Get 'JDK 5.0 Update 16' for 'Solaris x86 packages' file:"
FETCH_MESSAGE+=	"    jdk-1_5_0_16-solaris-i586.tar.Z"
FETCH_MESSAGE+=	"from http://java.sun.com/javase/downloads/index_jdk5.jsp or"
FETCH_MESSAGE+=	"http://java.sun.com/products/archive/j2se/5.0_16/index.html"

MESSAGE_SUBST+=		PREFIX=${PREFIX}
MESSAGE_SUBST+=		JAVA_HOME=${JAVA_HOME}
MESSAGE_SUBST+=		MOZILLA=${MOZILLA}

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	control/make/common/Defs-bsd.gmk
SUBST_FILES.paths+=	deploy/make/common/Defs-bsd.gmk
SUBST_FILES.paths+=	deploy/make/plugin/common/config.gmk
SUBST_FILES.paths+=	deploy/make/plugin/unsupported/ns6-adapter/Makefile
SUBST_FILES.paths+=	hotspot/src/os/bsd/vm/os_bsd.cpp
SUBST_FILES.paths+=	j2se/make/common/Defs-bsd.gmk
SUBST_FILES.paths+=	motif/lib/Xm/Makefile
SUBST_FILES.paths+=	motif/lib/Xm/util/Makefile
SUBST_FILES.paths+=	j2se/src/solaris/native/sun/awt/fontpath.c
SUBST_FILES.paths+=	j2se/make/sun/xawt/Makefile
SUBST_FILES.paths+=	j2se/make/sun/awt/mawt.gmk
SUBST_SED.paths=	-e 's,%%PREFIX%%,${PREFIX},g'
SUBST_SED.paths+=	-e 's,%%X11BASE%%,${X11BASE},g'
SUBST_SED.paths+=	-e 's,%%JVM_HOME%%,${JVM_HOME},g'

.include "options.mk"

PLIST_VARS+=    client_jvm
PLIST_SUBST+=	JAVA_MACHINE_ARCH=${JAVA_MACHINE_ARCH:Q}

.if ${MACHINE_ARCH} == "i386"
PLIST.client_jvm=	yes
.endif

.include "../../wip/jdk16/license-extract.mk"

pre-patch:
	cd ${WRKSRC} && ${PATCH} -p0 -E -s <jdk15.patches
	${FIND} ${WRKSRC}/ -name '*.orig' -print | ${XARGS} ${RM} -f

post-patch:
	${MKDIR} ${WRKSRC}/control/build/bsd-i586/lib/i386/server
	cd ${WRKDIR}/bin && ${CHMOD} +x bootscript
.for prog in java javac javah jar
	cd ${WRKDIR}/bin && ln -s bootscript ${prog}
.endfor
# We can't use ${EXTRACT_ELEMENTS} conditionally
# and post-extract has already been redefined.
	cd ${WRKDIR} && ${EXTRACTOR} \
		${DISTDIR}/${SOL_BINFILE} ${RT_JAR} ${TOOLS_JAR}
	mkdir -p ${OUTPUTDIR}/classes
	cd ${OUTPUTDIR}/classes && \
		unzip -q ${WRKDIR}/${RT_JAR} -x META-INF* && \
		unzip -qn ${WRKDIR}/${TOOLS_JAR} -x META-INF*
	rm -rf ${WRKDIR}/SUNWj5*

do-install:
	${INSTALL_PROGRAM_DIR} ${DESTDIR}${JAVA_HOME}
	cd ${JDKIMAGEDIR} && ${PAX} -rwp ma . ${DESTDIR}${JAVA_HOME}
	${INSTALL_DATA_DIR} ${DESTDIR}${JAVA_HOME}/jre/.systemPrefs
	${TOUCH} ${DESTDIR}${JAVA_HOME}/jre/.systemPrefs/.system.lock
	${CHMOD} 644 ${DESTDIR}${JAVA_HOME}/jre/.systemPrefs/.system.lock
	${TOUCH} ${DESTDIR}${JAVA_HOME}/jre/.systemPrefs/.systemRootModFile
	${CHMOD} 644 ${DESTDIR}${JAVA_HOME}/jre/.systemPrefs/.systemRootModFile
	${INSTALL_DATA} ${FILESDIR}/cacerts \
		${DESTDIR}${JAVA_HOME}/jre/lib/security/cacerts
#	 ${INSTALL_DATA} ${FILESDIR}/cacerts \
#		${DESTDIR}${JAVA_HOME}/jre/javaws/cacerts

.include "../../mk/java-env.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/libXtst/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
