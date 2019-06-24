dnl This is a GNU -*- autoconf -*- specification that is processed by Autoconf.
dnl Copyright 2019-2019, Oath Inc.
dnl Licensed under the terms of the Apache-2.0 license.
dnl See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

dnl
dnl SCARPET_ENABLE_DID_METHOD_NAME     (no arguments)
dnl
dnl The DID MEthod Name is a tag that provides uniqueness with the genre, culture, cohort of other DID schemes.
dnl See https://w3c-ccg.github.io/did-method-registry/ - DID Method Registry
dnl The DID Method is a simple word like "mumblecore" or among the many: austin, brunch, chia, distillery, enamel, franzen, goth, health, irony, jackalope, kitsch, listicle, meggings, next-level, organic, plaid, quinoa, raclette, scenester, tbh, ugh, vaporware, worke, yuccie, z-something
dnl
AC_DEFUN([SCARPET_ENABLE_DID_METHOD_NAME], [
    default_did_method_name="mumblecore"
    AC_ARG_ENABLE([did-method-name],
                  AS_HELP_STRING([--enable-did-method-name=NAME],
                                 [Choose the default DID method (a.k.a. DID resolver) name for mod_scarpet]),
                  [if test xno = x$enable_did_method_name; then
                      AC_MSG_ERROR([--disable-did-method-name is not meaningful, for mod_scarpet])
                   fi],
                  [enable_did_method_name="$default_did_method_name"])
    eval didmethodname="${enable_did_method_name}"
    eval didmethodname="${didmethodname}"
    eval didmethodname="${didmethodname}"
    eval didmethodname="${didmethodname}"
    TF_MSG_VERBOSE([setting DID_METHOD_NAME=$didmethodname])
    AC_DEFINE_UNQUOTED([DID_METHOD_NAME], "$didmethodname", [Default DID Genre (a.k.a. DID Resolver) name])
])
