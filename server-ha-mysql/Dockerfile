FROM jboss/keycloak-mysql:3.2.1.Final@sha256:8360d917402dcd2d69523ffb2d6fec11ee732fd932e214e685024d0ad68c4f19

CMD ["-b", "0.0.0.0", "--server-config", "standalone-ha.xml"]

RUN rm keycloak/standalone/configuration/standalone.xml

ADD xsl-transform.sh /usr/local/bin/xsl-transform

ADD *.xsl /tmp/

RUN xsl-transform /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml /tmp/jgroups-jdbc.xsl \
  && xsl-transform /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml /tmp/cache-owners.xsl \
  && xsl-transform /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml /tmp/node-identifier.xsl
