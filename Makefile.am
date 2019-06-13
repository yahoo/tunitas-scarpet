# This is a GNU -*- Makefile -*- fragment that is included by Automake
# Copyright 2019-2019, Oath Inc.
# Licensed under the terms of the Apache-2.0 license.
# See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

# silent-rules has no effect, see configure.ac
# no can do:  -Wall -Werror
AUTOMAKE_OPTIONS = no-define subdir-objects foreign
ACLOCAL_AMFLAGS = -I m4

LOCAL_ServerRoot = ./httpd

default:
include @temerarious_flagship_datadir@/am/build.am
# configure.ac:  HGTW_CONFIG_SUBMODULES([submodules], [ ...list...])
# Makefile.am    SUBDIRS = @subdirs@

DEVELOPMENT_AREAS = \
  $(apache_httpd_api_prefix) \
  $(module_ares_prefix) \
  $(module_boost_prefix) \
  $(module_c_prefix) \
  $(module_format_prefix) \
  $(module_ip_prefix) \
  $(module_json_prefix) \
  $(module_nonstd_prefix) \
  $(module_options_prefix) \
  $(module_posix_prefix) \
  $(module_slurp_prefix) \
  $(module_sqlite_prefix) \
  $(module_std_prefix) \
  $(module_string_prefix) \
  $(module_sys_prefix) \
  $(module_uuid_prefix) \
  $(tunitas_basics_prefix) \
  $(tunitas_butano_prefix) \
  $(end)
TESTING_AREAS = \
  $(module_cppunit_prefix) \
  $(module_rigging_prefix) \
  $(end)
INSTALLATION_AREAS = \
  $(nonstd_boost_prefix) \
  $(nonstd_cppunit_prefix) \
  $(nonstd_gcc_prefix) \
  $(nonstd_sqlite_prefix) \
  $(std_scold_prefix) \
  $(end)

module_SOURCE_SET = \
  $(lib_libautotools_autoconf_la_SOURCES) \
  $(lib_libmod_scarpet_la_SOURCES) \
  $(lib_libtunitas_scarpet_la_SOURCES) \
  $(lib_libwant_la_SOURCES) \
  $(end)

include src/app/keygen/Makefrag.am
include src/app/Makefrag.am
include src/app/publish/Makefrag.am
include src/app/zonegen/Makefrag.am
include src/autotools/autoconf/Makefrag.am
include src/mod/scarpet/Makefrag.am
include src/tests/unit/Makefrag.am
include src/tunitas/scarpet/Makefrag.am
include src/tunitas/scarpet/answer/Makefrag.am
include src/want/Makefrag.am

bin_PROGRAMS = \
  $(bin_did_keygen) \
  $(bin_did_publish) \
  $(bin_did_zonegen) \
  $(end)
noinst_LTLIBRARIES = \
  $(lib_libautotools_autoconf_la) \
  $(lib_libautotools_autoconf_a_b_la) \
  $(lib_libtunitas_scarpet_answer_la) \
  $(lib_libwant_la) \
  $(lib_libapp_la) \
  $(end)
lib_LTLIBRARIES = \
  $(lib_libmod_scarpet_la) \
  $(lib_libtunitas_scarpet_la) \
  $(end)
check_PROGRAMS = \
  $(check_bin_unit) \
  $(end)
check_LTLIBRARIES = \
  $(end)

autotools_autoconf_DEPENDENT_OBJECTS_SET = \
  $(lib_libtunitas_scarpet_la_OBJECTS) \
  $(lib_libwant_la_OBJECTS) \
  $(bin_unit_OBJECTS) \
  $(end)
autotools_autoconf_DEPENDENT_MODULES_SET = \
  $(lib_libtunitas_scarpet_la_MODULES) \
  $(lib_libwant_la_MODULES) \
  $(end)
$(autotools_autoconf_DEPENDENT_OBJECTS_SET) : $(autotools_autoconf_DEPENDENT_MODULES_SET)
autotools_autoconf_DEPENDENT_GENERATED_SET = \
  $(scold_cxxdir)/autotools/autoconf/Config/tunitas/scarpet/CONFIG.cpp \
  $(scold_cxx_modulesdir)/autotools.autoconf.Config.tunitas.scarpet.CONFIG \
  \
  $(scold_cxxdir)/autotools/autoconf/Config/mod/scarpet/CONFIG.cpp \
  $(scold_cxx_modulesdir)/autotools.autoconf.Config.mod.scarpet.CONFIG \
  $(end)
  $(end)
$(autotools_autoconf_DEPENDENT_OBJECTS_SET) : $(autotools_autoconf_DEPENDENT_GENERATED_SET)

include tests/unit/Makefrag.am
include tests/keygen/Makefrag.am
include tests/publish/Makefrag.am
include tests/zonegen/Makefrag.am

if ENABLE_SERVER_TESTS
ENABLED_SERVER_TESTS = \
  tests/start-contact-stop.test \
  $(end)
else
ENABLED_SERVER_TESTS = 
endif

XFAIL_TESTS = \
  $(tests_unit_XFAIL_TESTS) \
  $(tests_keygen_XFAIL_TESTS) \
  $(tests_publish_XFAIL_TESTS) \
  $(tests_zonegen_XFAIL_TESTS) \
  $(ENABLED_SERVER_XFAIL_TESTS)
  $(end)
TESTS = \
  $(tests_unit_TESTS) \
  $(tests_keygen_TESTS) \
  $(tests_publish_TESTS) \
  $(tests_zonegen_TESTS) \
  $(ENABLED_SERVER_TESTS)
  $(end)

# NOPE ... you can't say install depends upon check because
# then automake assesses that this is *the* install rule.
#install: check
default: all

# REMOVE WHEN: baleful_ballad:hypogeal-twilight-0.??.? has work that supercedes this
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
Makefile_CHECK_CPPFLAGS_SET    = @CPPFLAGS_cppunit@
Makefile_CHECK_CFLAGS_SET      =   @CFLAGS_cppunit@
Makefile_CHECK_CXXFLAGS_SET    = @CXXFLAGS_cppunit@
Makefile_CHECK_LDFLAGS_SET     =  @LDFLAGS_cppunit@

# See the 'Usage' statement in @hypogeal_twilight_datadir@/mk/toolflags.mk
# See the definitions and expected usage of
#    PACKAGE_${TOOL}FLAGS_SET
#    CHECK_${TOOL}FLAGS_SET
#    AND_CHECK_${TOOL}FLAGS_SET
AM_CPPFLAGS = $(PACKAGE_CPPFLAGS_SET)
AM_CFLAGS   = $(PACKAGE_CFLAGS_SET)
AM_CXXFLAGS = $(PACKAGE_CXXFLAGS_SET)
AM_LDFLAGS  = $(warning AM_LDFLAGS is not used by automake Makefile final-link invocations) $(PACKAGE_LDFLAGS_SET)
# end
