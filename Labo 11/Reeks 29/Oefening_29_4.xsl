<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" />

    <xsl:template match="/contacten">
        <contacten>
            <xsl:apply-templates select="contact[@soort='zakelijk']"/>
        </contacten>
    </xsl:template>

    <xsl:template match="contact[@soort='zakelijk']">
        <contact soort="{@soort}">
            <naam>
                <xsl:apply-templates select="naam"/>
            </naam>
            <straat><xsl:value-of select="adres/straat"/></straat>
            <adres>
                <xsl:apply-templates select="adres"/>
            </adres>
            <tel><xsl:value-of select="tel"/></tel>
        </contact> 
    </xsl:template>

    <xsl:template match="naam">
        <voornaam><xsl:value-of select="voornaam"/></voornaam>
        <achternaam><xsl:value-of select="achternaam"/></achternaam>
    </xsl:template>

    <xsl:template match="adres">
        <postcode><xsl:value-of select="postcode"/></postcode>
        <gemeente><xsl:value-of select="gemeente"/></gemeente>
    </xsl:template>


</xsl:stylesheet>