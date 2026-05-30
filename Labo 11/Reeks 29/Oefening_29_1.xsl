<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/dataroot">
        <producten>
            <xsl:apply-templates select="product"/>
        </producten>
    </xsl:template>

    <xsl:template match="product">
        <product nr="{Productnummer}">
            <naam><xsl:value-of select="Productnaam"/></naam>
            <nederlandseNaam><xsl:value-of select="NederlandseNaam"/></nederlandseNaam>
            <hoeveelheidsPerEenheid><xsl:value-of select="HoeveelheidPerEenheid"/></hoeveelheidsPerEenheid>
            <prijsPerEenheid><xsl:value-of select="PrijsPerEenheid"/></prijsPerEenheid>
        </product>
    </xsl:template>

</xsl:stylesheet>