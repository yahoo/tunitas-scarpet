# This is a GNU -*- Makefile -*- fragment that is included by Automake
# Copyright Yahoo Inc. 2021.
# Licensed under the terms of the Apache-2.0 license.
# For terms, see the LICENSE file at https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE
# For terms, see the LICENSE file at https://git.tunitas.technology/all/services/scarpet/tree/LICENSE

# silent-rules has no effect, see configure.ac
# no can do:  -Wall -Werror
AUTOMAKE_OPTIONS = no-define subdir-objects foreign
ACLOCAL_AMFLAGS = -I m4

LOCAL_ServerRoot = ./httpd

default:
include tests/Makefrag.am
include @temerarious_flagship_datadir@/am/build.am
# configure.ac:  HGTW_CONFIG_SUBMODULES([submodules], [ ...list...])
# Makefile.am    SUBDIRS = @subdirs@

plusplus = ++$(error REMOVE)
_module = -module$(error REMOVE)

DEVELOPMENT_AREAS = \
  $(apache_httpd_api_prefix) \
  $(deprecated_DEVELOPMENT_AREAS) \
  $(module_ares_prefix) \
  $(module_cli_core_prefix) \
  $(module_cli_shell_prefix) \
  $(module_json_prefix) \
  $(module_nonstd_prefix) \
  $(module_openssl_prefix) \
  $(module_sqlite_prefix) \
  $(module_sys_prefix) \
  $(tunitas_basics_prefix) \
  $(tunitas_butano_prefix) \
  $(end)
TESTING_AREAS = \
  $(module_rigging_core_prefix) \
  $(deprecated_TESTING_AREAS) \
  $(end)
INSTALLATION_AREAS = \
  $(nonstd_gcc_prefix) \
  $(nonstd_sqlite_prefix) \
  $(std_scold_prefix) \
  $(deprecated_INSTALLATION_AREAS) \
  $(end)

#
# The following three definitions must be consistent
#
# Makefile.am module_SOURCE_SET    (future)         the modules (cut & paste header files)
# Makefile.am module_BB_SOURCE_SET (deprecating)    them.
# Makefile.am lib_LTLIBRARIES      (current)        the DSO & static libraries
# tunitas-scarpet.spec the '%files devel' stanza must list the 
#
lib_libtunitas_scarpet_la_MODULE_SOURCES_SET = \
  $(lib_libautotools_autoconf_la_SOURCES) \
  $(lib_libmod_scarpet_la_SOURCES) \
  $(lib_libtunitas_scarpet_la_SOURCES) \
  $(lib_libtunitas_scarpet_answer_la_SOURCES) \
  $(lib_libtunitas_scarpet_compiler_la_SOURCES) \
  $(lib_libtunitas_scarpet_did_la_SOURCES) \
  $(lib_libtunitas_scarpet_dns_la_SOURCES) \
  $(lib_libtunitas_scarpet_drrs_la_SOURCES) \
  $(lib_libtunitas_scarpet_model_la_SOURCES) \
  $(lib_libtunitas_scarpet_pki_la_SOURCES) \
  $(lib_libtunitas_scarpet_resolve_la_SOURCES) \
  $(lib_libwant_la_SOURCES) \
  $(end)
module_SOURCE_SET = \
  $(lib_libtunitas_scarpet_la_MODULE_SOURCES_SET) \
  $(end)

include noinst/lib/libapp.am
include noinst/lib/libapp-authgen.am
include bin/did-authgen.am
include noinst/lib/libapp-diggity.am
include bin/did-diggity.am
include noinst/lib/libapp-genesis.am
include bin/did-genesis.am
include noinst/lib/libapp-publish.am
include bin/did-publish.am
include noinst/lib/libapp-scissor.am
include bin/did-scissor.am
include noinst/lib/libapp-signify.am
include bin/did-signify.am
include noinst/lib/libapp-zonegen.am
include bin/did-zonegen.am

include check/bin/authgen.am
include check/bin/diggity.am
include check/bin/genesis.am
include check/bin/publish.am
include check/bin/scissor.am
include check/bin/signify.am
include check/bin/zonegen.am
include check/bin/unit.am

include noinst/lib/libautotools-autoconf+tunitas-scarpet.am

include noinst/lib/libmod_scarpet.am
include lib/libmod_scarpet.am
include lib/libtunitas-scarpet.am
include noinst/lib/libtunitas-scarpet.am
include noinst/lib/libwant.am
include lib/libtunitas-scarpet-application.am
include noinst/lib/libtunitas-scarpet-application.am
include check/lib/libtests.am
include check/lib/libtests-run.am

include noinst/lib/libtunitas-scarpet-answer.am
include noinst/lib/libtunitas-scarpet-compiler.am
include noinst/lib/libtunitas-scarpet-did.am
include noinst/lib/libtunitas-scarpet-dns.am
include noinst/lib/libtunitas-scarpet-drrs.am
include noinst/lib/libtunitas-scarpet-model.am
include noinst/lib/libtunitas-scarpet-pki.am
include noinst/lib/libtunitas-scarpet-resolve.am

bin_PROGRAMS = \
  bin/did-authgen \
  bin/did-diggity \
  bin/did-genesis \
  bin/did-publish \
  bin/did-scissor \
  bin/did-signify \
  bin/did-zonegen \
  $(end)
noinst_LTLIBRARIES = \
  noinst/lib/libautotools-autoconf+tunitas-scarpet.la \
  noinst/lib/libtunitas-scarpet-application.la \
  noinst/lib/libtunitas-scarpet.la \
  noinst/lib/libtunitas-scarpet-answer.la \
  noinst/lib/libtunitas-scarpet-compiler.la \
  noinst/lib/libtunitas-scarpet-did.la \
  noinst/lib/libtunitas-scarpet-dns.la \
  noinst/lib/libtunitas-scarpet-drrs.la \
  noinst/lib/libtunitas-scarpet-model.la \
  noinst/lib/libtunitas-scarpet-pki.la \
  noinst/lib/libtunitas-scarpet-resolve.la \
  noinst/lib/libmod_scarpet.la \
  noinst/lib/libwant.la \
  noinst/lib/libapp.la \
  noinst/lib/libapp-authgen.la \
  noinst/lib/libapp-diggity.la \
  noinst/lib/libapp-genesis.la \
  noinst/lib/libapp-publish.la \
  noinst/lib/libapp-scissor.la \
  noinst/lib/libapp-signify.la \
  noinst/lib/libapp-zonegen.la \
  $(end)
# WATCHOUT - these MUST be listed in this order so that the sequential install rule will allow the linker to process.
#            libtool linking of libmod_apanolio.la MUST see the installed libtunitas-apanolio.la in order to be "finished"
lib_LTLIBRARIES = \
  lib/libtunitas-scarpet.la \
  lib/libtunitas-scarpet-application.la \
  lib/libmod_scarpet.la \
  $(end)
check_PROGRAMS = \
  check/bin/unit \
  check/bin/authgen \
  check/bin/diggity \
  check/bin/genesis \
  check/bin/publish \
  check/bin/scissor \
  check/bin/signify \
  check/bin/zonegen \
  $(end)
check_LTLIBRARIES = \
  check/lib/libtests.la \
  check/lib/libtests-run.la \
  $(end)

# NOPE ... you can't say install depends upon check because
# then automake assesses that this is *the* install rule.
#install: check
default: all

# [[REMOVEWHEN]]: hypogeal-twilight has work that supercedes this (and when is that?  hypogeal-twilight >= 0.7000? when?
Makefile_nonstd_PACKAGE_CPPFLAGS_SET = @nonstd_boost_CPPFLAGS@ @nonstd_gcc_CPPFLAGS@
Makefile_nonstd_PACKAGE_CFLAGS_SET   = @nonstd_boost_CFLAGS@   @nonstd_gcc_CFLAGS@
Makefile_nonstd_PACKAGE_CXXFLAGS_SET = @nonstd_boost_CXXFLAGS@ @nonstd_gcc_CXXFLAGS@
Makefile_nonstd_PACKAGE_LDFLAGS_SET  = @nonstd_boost_LDFLAGS@  @nonstd_gcc_LDFLAGS@
Makefile_nonstd_CHECK_CPPFLAGS_SET   = @nonstd_cppunit_CPPFLAGS@
Makefile_nonstd_CHECK_CFLAGS_SET     = @nonstd_cppunit_CFLAGS@
Makefile_nonstd_CHECK_CXXFLAGS_SET   = @nonstd_cppunit_CXXFLAGS@
Makefile_nonstd_CHECK_LDFLAGS_SET    = @nonstd_cppunit_LDFLAGS@

Makefile_COMPILER_CPPFLAGS_SET = @CPPFLAGS_gcc@ 
Makefile_COMPILER_CFLAGS_SET   =   @CFLAGS_gcc@   @CFLAGS_gdb@
Makefile_COMPILER_CXXFLAGS_SET = @CXXFLAGS_gcc@ @CXXFLAGS_gdb@
Makefile_COMPILER_LDFLAGS_SET  =  @LDFLAGS_gcc@  @LDFLAGS_gdb@ @libstd_filesystem@
Makefile_PACKAGE_CPPFLAGS_SET  = @CPPFLAGS_httpd@ @CPPFLAGS_apr@ @CPPFLAGS_apreq@ @CPPFLAGS_uuid@
Makefile_PACKAGE_CFLAGS_SET    =   @CFLAGS_httpd@   @CFLAGS_apr@   @CFLAGS_apreq@   @CFLAGS_uuid@
Makefile_PACKAGE_CXXFLAGS_SET  = @CXXFLAGS_httpd@ @CXXFLAGS_apr@ @CXXFLAGS_apreq@ @CXXFLAGS_uuid@
Makefile_PACKAGE_LDFLAGS_SET   =  @LDFLAGS_httpd@  @LDFLAGS_apr@  @LDFLAGS_apreq@  @LDFLAGS_uuid@

#                                                  if    did not substitute away                      then use this
#                                                  |           |                                      |            else use the substitution
#                                                  |           |              @CPPFLAGS_no_install@   |            |
#                                                  |           |              |                       |            |
#                                                  |           |              |                       |            |
#                                                  v           v              v                       v            v
Makefile_CHECK_CPPFLAGS_SET = @CPPFLAGS_cppunit@ $(if $(filter %_no_install@, @CPPFLAGS_no_install@), $(empty),    @CPPFLAGS_no_install@)
Makefile_CHECK_CFLAGS_SET   =   @CFLAGS_cppunit@ $(if $(filter %_no_install@, @CFLAGS_no_install@),   $(empty),    @CFLAGS_no_install@)
Makefile_CHECK_CXXFLAGS_SET = @CXXFLAGS_cppunit@ $(if $(filter %_no_install@, @CXXFLAGS_no_install@), $(empty),    @CXXFLAGS_no_install@)
Makefile_CHECK_LDFLAGS_SET  =  @LDFLAGS_cppunit@ $(if $(filter %_no_install@, @LDFLAGS_no_install@),  -no-install, @LDFLAGS_no_install@)

# See the 'Usage' statement in @hypogeal_twilight_datadir@/mk/toolflags.mk
# See the definitions and expected usage of
#    PACKAGE_${TOOL}FLAGS_SET
#    CHECK_${TOOL}FLAGS_SET
#    AND_CHECK_${TOOL}FLAGS_SET
AM_CPPFLAGS = $(PACKAGE_CPPFLAGS_SET)
AM_CFLAGS   = $(PACKAGE_CFLAGS_SET)
AM_CXXFLAGS = $(PACKAGE_CXXFLAGS_SET)
AM_LDFLAGS  = $(warning AM_LDFLAGS is not used by automake Makefile final-link invocations) $(PACKAGE_LDFLAGS_SET)
#
deprecated_DEVELOPMENT_AREAS = \
  $(module_boost_prefix) \
  $(module_c_prefix) \
  $(module_format_prefix) \
  $(module_ip_prefix) \
  $(module_options_prefix) \
  $(module_posix_prefix) \
  $(module_shell_prefix) \
  $(module_slurp_prefix) \
  $(module_std_prefix) \
  $(module_string_prefix) \
  $(module_uuid_prefix) \
  $(end)
deprecated_TESTING_AREAS = \
  $(module_cppunit_prefix) \
  $(module_rigging_prefix) \
  $(end)
deprecated_INSTALLATION_AREAS = \
  $(nonstd_boost_prefix) \
  $(nonstd_cppunit_prefix) \
  $(end)
