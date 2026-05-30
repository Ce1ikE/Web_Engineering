<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" />

    <xsl:template match="/contacten">
        <contacten>
            <xsl:apply-templates select="contact"></xsl:apply-templates>
        </contacten>
    </xsl:template>

    <xsl:template match="contact">
        <contact soort="{@soort}">
            <voornaam><xsl:value-of select="naam/voornaam"/></voornaam>
            <achternaam><xsl:value-of select="naam/achternaam"/></achternaam>
            <straat><xsl:value-of select="adres/straat"/></straat>
            <postcode><xsl:value-of select="adres/postcode"/></postcode>
            <gemeente><xsl:value-of select="adres/gemeente"/></gemeente>
            <tel><xsl:value-of select="tel"/></tel>
        </contact> 
    </xsl:template>


</xsl:stylesheet>