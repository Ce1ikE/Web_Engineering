<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/buurlanden">
<html>
<head>
  <meta charset="utf-8" />
  <title>buurlanden</title>
  <link href="stijl.css" rel="stylesheet" />
</head>
<body>
    <h1>België en zijn buurlanden</h1>
    <p>In onderstaande tabel vind je België en zijn voornaamste buurlanden (situatie op 01/01/2013)</p>
    <table>
        <tr><th>Land</th><th>Hoofdstad</th><th>Vlag</th><th>Staatshoofd</th><th>Troonopvolger</th></tr>
        <xsl:for-each select="land">
            <tr>
                <td><xsl:value-of select="landnaam" /></td>
                <td><xsl:value-of select="hoofdstad" /></td>
                <td class="centraal"><img><xsl:attribute name="src"><xsl:value-of select="kenteken" /><xsl:text>.gif</xsl:text></xsl:attribute></img></td>
                <td><xsl:value-of select="staatshoofd/naam/@aanspreektitel" /><xsl:text> </xsl:text><xsl:value-of select="staatshoofd/naam" /></td>
                <td><xsl:value-of select="familie/kind/naam/@aanspreektitel" /><xsl:text> </xsl:text><xsl:value-of select="familie/kind/naam" /></td>
            </tr>
        </xsl:for-each>
    </table>
    
    

</body>
</html>
</xsl:template>
 
</xsl:stylesheet>