<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/buurlanden">
        <html>
            <head>
                <title>Reeks 29 : Oefening 7</title>
                <link rel="stylesheet" href="./Oefening_29_7.css"/>
            </head>
            <body>
                <h1>Belgie en zijn buurlanden</h1>
                <p>In onderstaande tabel vind je belgie en zijn voornaamste buurlanden</p>
                <table>
                    <tr>
                        <th>Land</th>
                        <th>Hoofdstad</th>
                        <th>Vlag</th>
                        <th>Staatshoofd</th>
                        <th>Troonopvolger</th>
                    </tr>
                    <xsl:apply-templates select="land" />
                    <!-- <xsl:apply-templates select="land{@staatsvorm='monarchie'}" />
                    <xsl:apply-templates select="land{@staatsvorm='bondsrepubliek'}" /> -->
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="land">
        <tr>
            <td>
                <xsl:value-of select="landnaam"/>
            </td>
            <td>
                <xsl:value-of select="hoofdstad"/>
            </td>
            <td>
                <img>
                    
                    <xsl:attribute name="src">
                        <xsl:text>../Startbestanden/Oefening29_7/</xsl:text>
                        <xsl:value-of select="kenteken"/>
                        <xsl:text>.gif</xsl:text>
                    </xsl:attribute>

                    <xsl:attribute name="alt">
                        Image_Country_Flag
                    </xsl:attribute>

                    <xsl:attribute name="title">
                        <xsl:value-of select="landnaam"/>
                    </xsl:attribute>
                    
                </img>
            </td>
            <td>
                <xsl:value-of select="staatshoofd/naam/@aanspreektitel"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="staatshoofd/naam"/>
            </td>
            <td>
                <xsl:value-of select="familie/kind/naam/@aanspreektitel"/> 
                <xsl:text> </xsl:text>
                <xsl:value-of select="familie/kind/naam"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>