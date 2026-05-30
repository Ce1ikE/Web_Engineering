<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/citaten">
        <citaten>
            <xsl:apply-templates select="citaat"/>
        </citaten>
    </xsl:template>

    <xsl:template match="citaat">
        <citaat>

            <auteur><xsl:value-of select="auteur"/></auteur>
            <tekst><xsl:value-of select="tekst"/></tekst>
        </citaat>
    </xsl:template>

</xsl:stylesheet>