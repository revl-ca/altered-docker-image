ARG KEYCLOAK_VERSION
FROM jboss/keycloak:$KEYCLOAK_VERSION AS base
ADD patches /patches

FROM base AS tool
USER root
RUN yum install -y patch

FROM base
COPY --from=tool /usr/bin/patch /usr/bin/patch
RUN (stat /patches/${KEYCLOAK_VERSION}.patch && patch --directory / --strip 0 --input /patches/${KEYCLOAK_VERSION}.patch) || \
    >&2 echo "No patch found for version ${KEYCLOAK_VERSION}."

