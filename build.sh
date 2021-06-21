#!/bin/sh

mkdir -p publish
cp _redirects publish/_redirects
kramdown-rfc2629 -3 draft-richer-oauth-httpsig.md > publish/draft-richer-oauth-httpsig.xml
xml2rfc --v2v3 publish/draft-richer-oauth-httpsig.xml -o publish/draft-richer-oauth-httpsig.xml
xml2rfc --text publish/draft-richer-oauth-httpsig.xml
xml2rfc --html publish/draft-richer-oauth-httpsig.xml
