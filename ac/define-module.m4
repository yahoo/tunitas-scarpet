dnl This is a GNU -*- autoconf -*- specification that is processed by Autoconf.
dnl Yahoo Inc. 2021
dnl Licensed under the terms of the Apache-2.0 license.
dnl See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

dnl
dnl SCARPET_DEFINE_MODULE_NAME     (no arguments)
dnl
dnl Define the httpd module name after the package name
dnl The httpd module name is mentioned in configuration files the statements
dnl   <Location /scarpet>
dnl      SetHandler mod_scarpet
dnl   </Location>
dnl
dnl See the commentariat in src/mod/scarpet/config/parse.xcpp and Specification.xcpp
dnl
AC_DEFUN([SCARPET_DEFINE_MODULE_NAME], [
    AC_REQUIRE([TF_PACKAGE_VARIABLES])
    #
    # Apache HTTPd Configuration file availability
    #
    #    <Location /scarpet>
    #         SetHandler mod_scarpet <-------- MODULE_NAME in Apache HTTPd culture traditionally begins with "mod_"
    #    </Location>
    #
    # S.C.O.L.D C++ availability in autotools::autoconf::Config<CONFIG>
    #
    #    char const *const HANDLER_NAME = autotools::autoconf::Config<CONFIG>::module_name();
    #
    AC_DEFINE_UNQUOTED([MODULE_NAME], "mod_${PACKAGE_NAME}", [The Apache HTTPd module name as seen from the handler])
])
