# This is a GNU -*- Makefile -*- fragment that is included by Automake
# Copyright 2019, Oath Inc.; Copyright 2020, Verizon Media
# Licensed under the terms of the Apache-2.0 license.
# For terms, see the LICENSE file at https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE
# For terms, see the LICENSE file at https://git.tunitas.technology/all/services/scarpet/tree/LICENSE

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
  $(module_openssl_prefix) \
  $(module_options_prefix) \
  $(module_posix_prefix) \
  $(module_shell_prefix) \
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

include src/app/Makefrag.am
include src/app/authgen/Makefrag.am
include src/app/diggity/Makefrag.am
include src/app/genesis/Makefrag.am
include src/app/publish/Makefrag.am
include src/app/scissor/Makefrag.am
include src/app/signify/Makefrag.am
include src/app/zonegen/Makefrag.am
include src/autotools/autoconf/Makefrag.am
include src/mod/scarpet/Makefrag.am
include src/tests/Makefrag.am
include src/tests/unit/Makefrag.am
include src/tests/authgen/Makefrag.am
include src/tests/diggity/Makefrag.am
include src/tests/genesis/Makefrag.am
include src/tests/publish/Makefrag.am
include src/tests/scissor/Makefrag.am
include src/tests/signify/Makefrag.am
include src/tests/zonegen/Makefrag.am
include src/tests/run/Makefrag.am
include src/tunitas/scarpet/Makefrag.am
include src/tunitas/scarpet/application/Makefrag.am
include src/tunitas/scarpet/answer/Makefrag.am
include src/tunitas/scarpet/compiler/Makefrag.am
include src/tunitas/scarpet/did/Makefrag.am
include src/tunitas/scarpet/dns/Makefrag.am
include src/tunitas/scarpet/drrs/Makefrag.am
include src/tunitas/scarpet/model/Makefrag.am
include src/tunitas/scarpet/pki/Makefrag.am
include src/tunitas/scarpet/resolve/Makefrag.am
include src/want/Makefrag.am

bin_PROGRAMS = \
  $(bin_did_authgen) \
  $(bin_did_diggity) \
  $(bin_did_genesis) \
  $(bin_did_publish) \
  $(bin_did_scissor) \
  $(bin_did_signify) \
  $(bin_did_zonegen) \
  $(end)
noinst_LTLIBRARIES = \
  $(lib_libautotools_autoconf_la) \
  $(lib_libautotools_autoconf_a_b_la) \
  $(lib_libtunitas_scarpet_answer_la) \
  $(lib_libtunitas_scarpet_compiler_la) \
  $(lib_libtunitas_scarpet_did_la) \
  $(lib_libtunitas_scarpet_dns_la) \
  $(lib_libtunitas_scarpet_drrs_la) \
  $(lib_libtunitas_scarpet_model_la) \
  $(lib_libtunitas_scarpet_pki_la) \
  $(lib_libtunitas_scarpet_resolve_la) \
  $(lib_libwant_la) \
  $(lib_libapp_la) \
  $(lib_libapp_authgen_la) \
  $(lib_libapp_diggity_la) \
  $(lib_libapp_genesis_la) \
  $(lib_libapp_publish_la) \
  $(lib_libapp_scissor_la) \
  $(lib_libapp_signify_la) \
  $(lib_libapp_zonegen_la) \
  $(end)
# WATCHOUT - these MUST be listed in this order so that the sequential install rule will allow the linker to process.
#            libtool linking of libmod_apanolio.la MUST see the installed libtunitas-apanolio.la in order to be "finished"
lib_LTLIBRARIES = \
  $(lib_libtunitas_scarpet_la) \
  $(lib_libtunitas_scarpet_application_la) \
  $(lib_libmod_scarpet_la) \
  $(end)
check_PROGRAMS = \
  $(check_bin_unit) \
  $(check_bin_authgen) \
  $(check_bin_diggity) \
  $(check_bin_genesis) \
  $(check_bin_publish) \
  $(check_bin_scissor) \
  $(check_bin_signify) \
  $(check_bin_zonegen) \
  $(end)
check_LTLIBRARIES = \
  $(check_lib_libtests_la) \
  $(check_lib_libtests_run_la) \
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

# alphabetical (or any order) is fine
include tests/unit/Makefrag.am
# the executables (their options and argument parsing)
include tests/authgen/Makefrag.am
include tests/diggity/Makefrag.am
include tests/genesis/Makefrag.am
include tests/publish/Makefrag.am
include tests/scissor/Makefrag.am
include tests/signify/Makefrag.am
include tests/zonegen/Makefrag.am
# the run series
include tests/run/authgen/Makefrag.am
include tests/run/diggity/Makefrag.am
include tests/run/genesis/Makefrag.am
include tests/run/publish/Makefrag.am
include tests/run/scissor/Makefrag.am
include tests/run/signify/Makefrag.am
include tests/run/zonegen/Makefrag.am
#
include tests/scenarios/Makefrag.am

if ENABLE_SERVER_TESTS
ENABLED_SERVER_TESTS = \
  tests/start-contact-stop.test \
  $(end)
else
ENABLED_SERVER_TESTS = 
endif

# ordered by complexity of the tests
XFAIL_TESTS = \
  $(tests_unit_XFAIL_TESTS) \
  $(tests_genesis_XFAIL_TESTS) \
  $(tests_authgen_XFAIL_TESTS) \
  $(tests_publish_XFAIL_TESTS) \
  $(tests_diggity_XFAIL_TESTS) \
  $(tests_scissor_XFAIL_TESTS) \
  $(tests_signify_XFAIL_TESTS) \
  $(tests_zonegen_XFAIL_TESTS) \
  $(tests_run_genesis_XFAIL_TESTS) \
  $(tests_run_authgen_XFAIL_TESTS) \
  $(tests_run_publish_XFAIL_TESTS) \
  $(tests_run_diggity_XFAIL_TESTS) \
  $(tests_run_scissor_XFAIL_TESTS) \
  $(tests_run_signify_XFAIL_TESTS) \
  $(tests_run_zonegen_XFAIL_TESTS) \
  $(tests_scenarios_XFAIL_TESTS) \
  $(ENABLED_SERVER_XFAIL_TESTS)
  $(end)
TESTS = \
  $(tests_unit_TESTS) \
  $(tests_genesis_TESTS) \
  $(tests_authgen_TESTS) \
  $(tests_publish_TESTS) \
  $(tests_diggity_TESTS) \
  $(tests_scissor_TESTS) \
  $(tests_signify_TESTS) \
  $(tests_zonegen_TESTS) \
  $(tests_run_genesis_TESTS) \
  $(tests_run_authgen_TESTS) \
  $(tests_run_publish_TESTS) \
  $(tests_run_diggity_TESTS) \
  $(tests_run_scissor_TESTS) \
  $(tests_run_signify_TESTS) \
  $(tests_run_zonegen_TESTS) \
  $(tests_scenarios_TESTS) \
  $(ENABLED_SERVER_TESTS)
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
# end
