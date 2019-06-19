# Tunitas Scarpet

This repository contains a reference implementation of a resolver and document storage service for [W3C Decentralized Identifiers](https://w3c-ccg.github.io/did-spec/).  The majority of the service capability is provided through the Domain Name Service using the <em>A DID Document is a Zone</em> paradigm, as is described below and elsewhere.  The system is "self-sovereign" in the sense that anyone (you) is able to stand up an identity service and announce identifiers, their ownership proofs and the service endpoints associated with them.  There are procedures for validating the origin and veracity of the identifiers which have been published through the system.

The main body of documentation for the Tunitas family of components and services can be found with the [packaging](https://github.com/yahoo/tunitas-packaging) and with [build system](https://github.com/yahoo/temerarious-flagship]).  The overview and administrative declarations herein are necessarily summary in nature. The declarations and definitions in the packaging and build system areas are complete and should be interpreted as superceding these when the two are in conflict.

## Table of Contents

- [Background](#background)
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Configuration](#configuration)
- [Build](#build)
- [Usage](#usage)
- [References](#references)
- [Security](#security)
- [Contribute](#contribute)
- [License](#license)
- [Origin of the Name](#Origin_of_the_name)

## Background

The implementation herein follows the [DID Specification](https://w3c-ccg.github.io/did-spec/).  It provides libraries and command-line tools for creating decentralized identifiers and the service endpoint statements (called "DID Documents"). 
Certain aspects of the Scarpet system are offered in the form of a Service-Oriented Architecture for those use cases where a command-line offering of the capability is not appropriate.

In the Tunitas Scarpet system, the DIDs (identifiers) and DID documents (meta-data containers) are published in the Domain Name System (DNS) as autonomous zones.  A description of the Domain Name System is beyond the scope of this summary document, however, some tutorial material is indicated below.  Suffice it to say that a <em>DID Document is a Zone File</em>.

Once players have developed their identifiers, services may be offered against the identifiers which have been announced.
A complete description of the practical use of decentralized identifiers is beyond the scope of this summary document.  A good introductory work can be found in the [Primer for Decentralized Identifiers](https://w3c-ccg.github.io/did-primer/).

DIDs are universal identifiers which are publicly announced and are prepared with service endpoints and cryptographic methods for proving their veracity and authenticity.  They fit well with the <em>Verified Credential</em> concept, which is mentioned in the [References](#References) section below. DIDs are useful for any application that benefit from self-administration, cryptographic verifiability and universality.  In contrast so called "cookie-based" identifiers do not have these properties.

Some notable services which use the DIDs produced in this project are listed below.  These are projects among Tunitas family of technologies

### [DataX](http://developer.yahoo.com/datax) (Audience Data Exchange)

* [Tunitas Lobitos](https://github.com/yahoo/tunitas-lobitos), a <em>macro-</em>-service approach to DataX API serving.
* [Tunitas Grabtown](https://github.com/yahoo/tunitas-grabtown), extensions to DataX to more exotic data types.

### [PrivacyChain](https://github.com/InteractiveAdvertisingBureau/PrivacyChain)

* [Tunitas Montara](https://github.com/yahoo/tunitas-montara), a <em>micro</em>-service approach ot the "North-facing" API
* [Tunitas Apanolio](https://github.com/yahoo/tunitas-apanolio), a <em>macro</em> service approach to that API.

## Dependencies

The DIDs and DID documents of Tunitas Scarpet are published int the Domain Name System (DNS) as zones.

### Operational Dependencies

* [BIND](https://en.wikipedia.org/wiki/BIND) - <em>Berkeley Internet Name Daemon</em> is widely available
* [DLZ](http://bind-dlz.sourceforge.net/) - Dynamically Loadable Zones (DLZ)

### Build Dependencies

The [configuration](#configuration) step will check for many but not all required packages and operating system features.  There is a list of known [package-dependencies](https://github.com/yahoo/tunitas-scarpet/blob/master/PACKAGES.md) which you will need to install beyond your base operating system.

Generally, the dependencies are among:
- Certain other components of the Tunitas system; <em>e.g.</em> the [Basic Components](https://github.com/yahoo/tunitas-basic).
- A modern (C++2a) development environment.
- A recent Fedora, but any recent Linux distro should suffice.

The Tunitas project was developed on Fedora 27 through Fedora 30 using GCC 7 and GCC 8 with `-fconcepts` and at least `-std=c++1z`.  More details on the development environment and the build system can be found in [temerarious-flagship](https://github.com/yahoo/temerarious-flagship/blob/master/README.md).

## Installation

You may install this repo and its dependents by running the following command:

``` bash
git clone https://github.com/yahoo/tunitas-scarpet.git
```

This will create a directory called `tunitas-scarpet` and download the contents of this repo to it.

Alternatively, if your organization already has made available the packaged version, then the following recipe will install the service:

``` bash
sudo dnf install tunitas-scarpet
```

## Configuration

The build system is based upon [GNU Autotools](https://www.gnu.org/software/automake/manual/html_node/index.html).

The configuration of the repo consists of two steps which must be done once.
1. `./buildconf`
2. `./configure`

The first step performs some crude assessments of the build environment and creates the site-specific `configure'. Of course `configure --help` will explain the build options.  The general options to `configure` are widely [documented](https://www.gnu.org/prep/standards/html_node/Configuration.html).

The `buildconf` component is boilerplate and can be updated from [temerarious-flagship](https://github.com/yahoo/temerarious-flagship/blob/master/bc/template.autotools-buildconf) as needed.  The [Tunitas Build System](https://github.com/yahoo/temerarious-flagship) should be available in `/opt/tunitas` and the template at `/opt/tunitas/share/temerarious-flagship/bc/template.autotools-buildconf`

## Build

The service can be built with the following recipe:

``` bash
./buildconf &&
./configure &&
make &&
make check &&
make install &&
echo OK DONE
```

Alternatively, if your organization already has made available the packaged version, then the following recipe will install the service:

``` bash
sudo dnf install tunitas-scarpet
```

## Usage

The tools provided in this repository are command-line tools which can be used to create DIDs and their associated service statements.  A simple example of the tools in use is shown following:

``` bash
did-keygen --private=file.private --public=file.public
did-zonegen --zone=file.zone --public=file.public
did-publish --zone=file.zone
```

## References

### Decentralized Identifiers (DIDs)

* [did-spec](https://w3c-ccg.github.io/did-spec/) -  <em>Decentralized Identifiers: Data Model and Syntaxes for Decentralized Identifiers (DIDs)</em>
* [did-primer](https://w3c-ccg.github.io/did-primer/) - <em>A Primer for Decentralized Identifiers: An introduction to self-administered identifiers for curious people</em>

### Verifiable Credentials (VC)

* [verifiable-claims-use-cases](https://www.w3.org/TR/verifiable-claims-use-cases/) - <em>Verifiable Claims Use Cases</em>
* [verifiable-claims-data-model](https://www.w3.org/TR/verifiable-claims-data-model/) - <em>Verifiable Credentials Data Model 1.0: Expressing verifiable information on the Web</em>

### Domain Name System (DNS) and Berkeley Internet Name Daemon (BIND)

* [Dynamically Loadable Zones (DLZ)](https://ftp.isc.org/isc/bind9/9.10.2/doc/arm/Bv9ARM.ch04.html) - <em>BIND 9 Annotated Reference Manual</em>
* [Using DLZ in BIND](https://kb.isc.org/docs/aa-00995)
* [BIND DLZ](bind-dlz.sourceforge.net/)

## Security

The Tunitas Scarpet tooling and service-practice is intended to facilitate the publication of structured meta-data which is indexed by the [Decentralized Identifiers](https://w3c-ccg.github.io/did-spec/).
The system allows individuals to fully control the identifiers and meta-data which to conveys information them.  The best practices for secure operations of DID Resolvers and DID Registries is described in [Section 10](https://w3c-ccg.github.io/did-spec/#security-considerations) of the specification document
The system, as it would be used in commercial practice, must not be used to convey so-called personally-identifying information (PII), or other proscribed information classes.  These considerations are described in [Section 11](https://w3c-ccg.github.io/did-spec/#privacy-considerations) of the aforementioned specification document.
While there are no known security implications around this business practice, there is significant interest in the practice by both jurisdictional commercial regulatory bodies (rules, regulations, laws) as well as voluntary trade representation bodies (self-regulatory codes).  Care should be taken in the operation of this service.

### Server Containers

#### Macroservice Approach

* [Apache HTTPd](https://httpd.apache.org/)
* [apache/httpd](https://github.com/apache/httpd)

#### Microservice Approach

* [etr/libhttpserver](https://github.com/etr/libhttpserver)
* [microhttpd](https://www.gnu.org/software/libmicrohttpd/)
* [libmicrohttpd](https://git.gnunet.org/libmicrohttpd.git), forked as [libmicrohttpd](https://github.com/scottjg/libmicrohttpd)

## Contribute

Please refer to [the contributing.md file](Contributing.md) for information about how to get involved. We welcome issues, questions, and pull requests. Pull Requests are welcome.

## Maintainers
- Wendell Baker <wbaker@verizonmedia.com>
- The Tunitas Team at Verizon Media.

You may contact us at least at <tunitas@verizonmedia.com>

## License

This project is licensed under the terms of the [Apache 2.0](LICENSE-Apache-2.0) open source license. Please refer to [LICENSE](LICENSE) for the full terms.

## Origin of the Name

[Scarpet Peak](https://openthewatershed.org/the-scarper-scarpet-scarpa-peak/) is one of the Summits in San Mateo County, CA.  Also interesting is the colorfhl history of the names [Scarper, Scarpet, Scarpa](https://openthewatershed.org/the-scarper-scarpet-scarpa-peak/).
