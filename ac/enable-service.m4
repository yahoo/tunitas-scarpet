dnl This is a GNU -*- autoconf -*- specification that is processed by Autoconf.
dnl Copyright 2019-2019, Oath Inc.
dnl Licensed under the terms of the Apache-2.0 license.
dnl See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

dnl
dnl SCARPET_ENABLE_DID_SERVICE_NAME     (no arguments)
dnl
dnl The DID Service Name is well-known name of the resolver algorithm (as a scheme)
dnl It follows the convention used in the NAPTR of small standardized tokens separated by plus ("+")
dnl
AC_DEFUN([SCARPET_ENABLE_DID_SERVICE_NAME], [
    default_did_service_name="did+w3id+v1"
    AC_ARG_ENABLE([did-service-name],
                  AS_HELP_STRING([--enable-did-service-name=NAME],
                                 [Choose the default DID service (a.k.a. DID resolver) name for mod_scarpet]),
                  [if test xno = x$enable_did_service_name; then
                      AC_MSG_ERROR([--disable-did-service-name is not meaningful, for mod_scarpet])
                   fi],
                  [enable_did_service_name="$default_did_service_name"])
    eval didservicename="${enable_did_service_name}"
    eval didservicename="${didservicename}"
    eval didservicename="${didservicename}"
    eval didservicename="${didservicename}"
    TF_MSG_VERBOSE([setting DID_SERVICE_NAME=$didservicename])
    AC_DEFINE_UNQUOTED([DID_SERVICE_NAME], "$didservicename", [Default DID Resolver Service Name])
])
