<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:infinispan="urn:jboss:domain:infinispan:4.0"
                exclude-result-prefixes="">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="//infinispan:distributed-cache[@name='sessions']">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:attribute name="owners">${env.CACHE_OWNERS:1}</xsl:attribute>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//infinispan:distributed-cache[@name='authenticationSessions']">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:attribute name="owners">${env.CACHE_OWNERS:1}</xsl:attribute>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//infinispan:distributed-cache[@name='offlineSessions']">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:attribute name="owners">${env.CACHE_OWNERS:1}</xsl:attribute>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//infinispan:distributed-cache[@name='loginFailures']">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:attribute name="owners">${env.CACHE_OWNERS:1}</xsl:attribute>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
