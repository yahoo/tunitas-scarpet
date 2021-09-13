dnl This is a GNU -*- autoconf -*- specification that is processed by Autoconf.
dnl Yahoo Inc. 2021
dnl Licensed under the terms of the Apache-2.0 license.
dnl See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

dnl
dnl SCARPET_ENABLE_DID_CLUB_NAME     (no arguments)
dnl
dnl The DID Club Name is the (DNS FQDN) name of the resolver.  e.g. scarpet.club (The [Tunitas] Scarpet Club)
dnl The DID Genre (DID Method) resolution will ask the service at this named address
dnl
AC_DEFUN([SCARPET_ENABLE_DID_CLUB_NAME], [
    default_did_club_name="scarpet.club"
    AC_ARG_ENABLE([did-club-name],
                  AS_HELP_STRING([--enable-did-club-name=FQDN],
                                 [Choose the default DID Club Name (a.k.a. DID Resolver FQDN) for mod_scarpet]),
                  [if test xno = x$enable_did_club_name; then
                      AC_MSG_ERROR([--disable-did-club-name is not meaningful, for mod_scarpet])
                   fi],
                  [enable_did_club_name="$default_did_club_name"])
    eval didclubname="${enable_did_club_name}"
    eval didclubname="${didclubname}"
    eval didclubname="${didclubname}"
    eval didclubname="${didclubname}"
    TF_MSG_VERBOSE([setting DID_CLUB_NAME=$didclubname])
    AC_DEFINE_UNQUOTED([DID_CLUB_NAME], "$didclubname", [Default DID Club (a.k.a. DID Resolver) name])
])
