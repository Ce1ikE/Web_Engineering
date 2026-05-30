<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" />

    <xsl:template match="/contacten">
        <contacten>
            <xsl:apply-templates select="contact"/>
        </contacten>
    </xsl:template>

    <xsl:template match="contact">
        <contact soort="{@soort}" 
                voornaam="{naam/voornaam}"
                achternaam="{naam/achternaam}"
                straat="{adres/straat}"
                postcode="{adres/postcode}"
                gemeente="{adres/gemeente}"
                tel="{tel}"/> 
    </xsl:template>


</xsl:stylesheet>