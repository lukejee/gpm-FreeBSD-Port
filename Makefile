# Created by: Luke Jee <lukejee@gmail.com>
# $FreeBSD$

PORTNAME=	gpm
PORTVERSION=	1.4.0
CATEGORIES=	devel

MAINTAINER=	lukejee@gmail.com
COMMENT=	Go Package Manager

LICENSE=	MIT

RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash \
				go:${PORTSDIR}/lang/go

USE_GITHUB= yes
GH_ACCOUNT= pote
GH_PROJECT= gpm
GH_TAGNAME= fef7bf2

ONLY_FOR_ARCHS=	amd64 i386

PLIST_FILES= bin/gpm

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/gpm ${STAGEDIR}${PREFIX}/bin/
.include <bsd.port.mk>
