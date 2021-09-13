dnl This is a GNU -*- autoconf -*- specification that is processed by Autoconf.
dnl Yahoo Inc. 2021
dnl Licensed under the terms of the Apache-2.0 license.
dnl See the LICENSE file in https://github.com/yahoo/tunitas-scarpet/blob/master/LICENSE for terms.

dnl
dnl SCARPET_ENABLE_TEST_DID_CLUB_NAME     (no arguments)
dnl
dnl The Test DID Club Name must be an FQDN which can resolve DIDPTR or NAPTR records
dnl
dnl Examples:
dnl   scarpet.club.
dnl   YOURDOMAIN.example.  <------------ of course you can stand up your own service!
dnl
dnl It is only used during building and testing.
dnl It is normally the same as the DID Club Name, but need not be.
dnl
AC_DEFUN([SCARPET_ENABLE_TEST_DID_CLUB_NAME], [
    AC_REQUIRE([SCARPET_ENABLE_DID_CLUB_NAME])
    default_test_did_club_name="${enable_did_club_name?}"
    AC_ARG_ENABLE([test-did-club-name],
                  AS_HELP_STRING([--enable-test-did-club-name=FQDN],
                                 [Choose the default Test DID Club Name (a.k.a. DID Resolver FQDN) for building and testing mod_scarpet]),
                  [if test xno = x$enable_test_did_club_name; then
                      AC_MSG_NOTICE([--disable-test-did-club-name implies that certain tests will fail unless they are disabled])
                   fi],
                  [enable_test_did_club_name="$default_test_did_club_name"])
    eval testdidclubname="${enable_did_club_name}"
    eval testdidclubname="${testdidclubname}"
    eval testdidclubname="${testdidclubname}"
    eval testdidclubname="${testdidclubname}"
    TF_MSG_VERBOSE([setting TEST_DID_CLUB_NAME=$testdidclubname])
    AC_DEFINE_UNQUOTED([TEST_DID_CLUB_NAME], "$testdidclubname", [Test DID Club (a.k.a. DID Resolver) name])
])

dnl
dnl SCARPET_ENABLE_TEST_DID_DOCUMENT_STORAGE_SERVICE_NAME     (no arguments)
dnl
dnl The Test DID Document Storage Service (DSSS) Name must be an FQDN which can resolve DID documents as DRSS or ZONE.
dnl
dnl Examples:
dnl   storage.scarpet.solutions.
dnl   YOURDOMAIN.example.  <------------ of course you can stand up your own service!
dnl
dnl It is only used during building and testing.
dnl It has no analog in an operational cluster.
dnl It is unique to the build and test environment..
dnl
AC_DEFUN([SCARPET_ENABLE_TEST_DID_DOCUMENT_STORAGE_SERVICE_NAME], [
    default_test_did_document_storage_service_name="scarpet.solutions"
    AC_ARG_ENABLE([test-did-document-storage-service_name],
                  AS_HELP_STRING([--enable-test-did-document-storage-service-name=FQDN],
                                 [Choose the default Test DID Document Storage Service (DSSS) Name (an FQDN) for building and testing mod_scarpet]),
                  [if test xno = x$enable_test_did_document_storage_service_name; then
                      AC_MSG_NOTICE([--disable-test-did-document-storage-service-name implies that certain tests will fail unless they are disabled])
                   fi],
                  [enable_test_did_document_storage_service_name="$default_test_did_document_storage_service_name"])
    eval testdiddocumentstorageservicename="${enable_did_document_storage_service_name}"
    eval testdiddocumentstorageservicename="${testdiddocumentstorageservicename}"
    eval testdiddocumentstorageservicename="${testdiddocumentstorageservicename}"
    eval testdiddocumentstorageservicename="${testdiddocumentstorageservicename}"
    TF_MSG_VERBOSE([setting TEST_DID_DOCUMENT_STORAGE_SERVICE_NAME=$testdiddocumentstorageservicename])
    AC_DEFINE_UNQUOTED([TEST_DID_DOCUMENT_STORAGE_SERVICE_NAME], "$testdiddocumentstorageservicename", [Test DID Document Storage Service (DSSS) Name (is an FQDN)])
])
