#!/bin/sh
#
# $NetBSD: slim.sh,v 1.5 2006/06/25 17:16:33 jmmv Exp $
#

# PROVIDE: slim
# REQUIRE: DAEMON LOGIN wscons
# KEYWORD: shutdown

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="slim"
rcvar=${name}
command="@PREFIX@/sbin/${name}"
command_args="-d"
pidfile="/var/run/${name}.lock"
required_files="@PKG_SYSCONFDIR@/slim.conf"

if [ -f /etc/rc.subr ]; then
	load_rc_config ${name}
	run_rc_command "$1"
else
	echo -n " ${name}"
	${command} ${slim_flags} ${command_args}
fi
