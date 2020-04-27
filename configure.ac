dnl This is a GNU -*- autoconf -*- specification that is processed by Autoconf.
dnl Copyright 2019-2019, Oath Inc.
dnl Licensed under the terms of the Apache-2.0 license.
dnl See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

AC_INIT([scarpet], [0.0.1], [tunitas@verizonmedia.com])
TF_INIT(AC_PACKAGE_NAME, AC_PACKAGE_VERSION, AC_PACKAGE_BUGREPORT)

TF_COMPONENT_METADIRECTORY_TIERS
TF_ENABLE_CONFIGURE_VERBOSE dnl first so that TF_MSG_VERBOSE works
TF_ENABLE_GCC
TF_ENABLE_GDB
TF_ENABLE_GNU
TF_ENABLE_MOCK_BUILD

TF_WITH_STD([scold])
TF_WITH_STD([tunitas])

TF_WITH_SUBSYSTEM([temerarious-flagship], [], [The Tunitas Build System])
TF_WITH_SUBSYSTEM([tunitas-basics], [], [The Tunitas Basics])

TF_MSG_VERBOSE([development subsystems (alphabetical)])
TF_WITH_SUBSYSTEM([apache-httpd-api], [apache_httpd_api], [Apache HTTPd API])
TF_WITH_MODULE([ares])
TF_WITH_MODULE([boost])
TF_WITH_MODULE([c])
TF_WITH_MODULE([format])
TF_WITH_MODULE([ip])
TF_WITH_MODULE([json])
TF_WITH_MODULE([nonstd])
TF_WITH_MODULE([openssl])
TF_WITH_MODULE([options])
TF_WITH_MODULE([posix])
TF_WITH_MODULE([shell])
TF_WITH_MODULE([slurp])
TF_WITH_MODULE([std])
TF_WITH_MODULE([sys])
TF_WITH_MODULE([uuid])

TF_MSG_VERBOSE([testing subsystems (alphabetical)])
TF_WITH_MODULE([cppunit])
TF_WITH_MODULE([rigging])

TF_MSG_VERBOSE([compiler-specific subsystems (alphabetical)])
dnl --with-std-scold is entailed above
dnl reminder ... boost & module-boost is unused herein, but module-curl will require it if you use that.
TF_WITH_NONSTD([boost], [boost], [a non-standard Boost])
TF_WITH_NONSTD([cppunit], [cppunit], [a non-standard CppUnit])
TF_WITH_NONSTD([gcc], [gcc], [a non-standard gcc, e.g. modernized gcc for C++11, C++14, C++17 and on unto C++2a])

TF_MSG_VERBOSE([system-side subsystems (alphabetical)])
TF_WITH_HYPOGEAL_TWILIGHT
dnl NOT YET -----> TF_WITH_INCENDIARY_SOPHIST

AC_CONFIG_SRCDIR([src/tunitas/scarpet/namespace.xcpp])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_FILES([Makefile])
AC_CONFIG_HEADER([config.h]) dnl via autoheader via ./buildconf

# not in alphabetical order,
# ... rather in the cryptic "you just have to know" order in which they have to be built
dnl configure.ac:  TF_CONFIG_SUBMODULES([submodules], [ ...list...])
dnl Makefile.am    SUBDIRS = @subdirs@

AC_PREREQ([2.69])
AM_PROG_AR             dnl first
AC_PROG_LIBTOOL
AC_PROG_CXX
TF_PROG_DC
LT_PREREQ([2.4.2])
LT_INIT                dnl second
AC_LANG([C++])
# Checks for tools
TF_CHECK_GCC
 # Checks for packages
TF_CHECK_CPPUNIT
TF_CHECK_APACHE_HTTPD
TF_CHECK_BOOST
TF_CHECK_CPPUNIT
TF_CHECK_UUID
# Checks for libraries.
TF_CHECK_STD_FILESYSTEM
# Checks for header files.
# Checks for typedefs, structures, and compiler characteristics.s
# Checks for library functions.

TF_PACKAGE_VARIABLES

m4_include([ac/define-module.m4])
SCARPET_DEFINE_MODULE_NAME

m4_include([ac/enable-club.m4])
SCARPET_ENABLE_DID_CLUB_NAME

m4_include([ac/enable-test-sets.m4])
SCARPET_ENABLE_TEST_SET([server])
m4_include([ac/enable-test-services.m4])
SCARPET_ENABLE_TEST_DID_CLUB_NAME
SCARPET_ENABLE_TEST_DID_DOCUMENT_STORAGE_SERVICE_NAME

m4_include([ac/enable-method.m4])
SCARPET_ENABLE_DID_METHOD_NAME

m4_include([ac/enable-protocol.m4])
SCARPET_ENABLE_DID_PROTOCOL_NAME

TF_FINALIZE
