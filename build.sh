#!/usr/bin/env bash

set -e

KEYCLOAK_VERSION=${KEYCLOAK_VERSION:=6.0.1}

echo -en "Re-building jboss/keycloak:$KEYCLOAK_VERSION:\n\n"

docker image build \
  --build-arg KEYCLOAK_VERSION=$KEYCLOAK_VERSION \
  --tag jboss/keycloak:$KEYCLOAK_VERSION-modified \
  .

