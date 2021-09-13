dnl This is a GNU -*- autoconf -*- specification that is processed by Autoconf.
dnl Yahoo Inc. 2021
dnl Licensed under the terms of the Apache-2.0 license.
dnl See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

dnl
dnl RFC 2915 refers to this as the "Service" or the "Service+Protocol"
dnl Since "Service" is an overused noun herein, we elect to use "Protocol" as the preferred name
dnl
dnl See https://www.ietf.org/rfc/rfc2915.txt, Section 2
dnl The service is named by its protocols with variants separated by '+'
dnl
dnl Examples:
dnl
dnl  (from the mumblecore lexicon)
dnl      did+affogato    did+biodiesel      did+chia                   did+lo-fo      ...etc...
dnl  (from the w3c did-spec)
dnl      did+w3id+v1     did+example.org    did+example.org+inline     did+context    ...etc...

dnl
dnl SCARPET_ENABLE_DID_PROTOCOL_NAME     (no arguments)
dnl
dnl The DID Service Name is well-known name of the resolver algorithm (as a scheme)
dnl It follows the convention used in the NAPTR of small standardized tokens separated by plus ("+")
dnl
AC_DEFUN([SCARPET_ENABLE_DID_PROTOCOL_NAME], [
    default_did_protocol_name="did+w3id+v1"
    AC_ARG_ENABLE([did-protocol-name],
                  AS_HELP_STRING([--enable-did-protocol-name=NAME],
                                 [Choose the default DID protocol (a.k.a. DID resolver) name for mod_scarpet]),
                  [if test xno = x$enable_did_protocol_name; then
                      AC_MSG_ERROR([--disable-did-protocol-name is not meaningful, for mod_scarpet])
                   fi],
                  [enable_did_protocol_name="$default_did_protocol_name"])
    eval didprotocolname="${enable_did_protocol_name}"
    eval didprotocolname="${didprotocolname}"
    eval didprotocolname="${didprotocolname}"
    eval didprotocolname="${didprotocolname}"
    TF_MSG_VERBOSE([setting DID_PROTOCOL_NAME=$didprotocolname])
    AC_DEFINE_UNQUOTED([DID_PROTOCOL_NAME], "$didprotocolname", [Default DID Resolver Service+Protocol Name])
])
