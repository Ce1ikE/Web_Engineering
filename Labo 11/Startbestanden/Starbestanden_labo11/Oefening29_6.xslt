<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8" />
        <title>Oefening 29.6</title>
        <link href="Oefening29_6.css" rel="stylesheet" />
      </head>
      <body>

        <div class="vlees">
          <h1>Vleesgerechten</h1>
          <h2>Overzicht</h2>
          <table class="vlees">
            <tr>
              <th>naam</th>
              <th>voorbereidingstijd</th>
              <th>bereidingstijd</th>
              <th>ingredienten</th>
            </tr>
            
            <xsl:for-each select="gerechten/gerecht[@class='vlees']">
              <tr>
                <td class="links"><xsl:value-of select="naam" /></td>
                <td><xsl:value-of select="tijd/voorbereiding" /></td>
                <td><xsl:value-of select="tijd/bereiding" /></td>
                <td class="links">
                  <ul>
                    <xsl:for-each select="ingredienten/ingredient">
                      <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                  </ul>
                </td>
              </tr>
            </xsl:for-each>
          </table>
          
          <h2>Beschrijving</h2>
          <xsl:for-each select="gerechten/gerecht[@class='vlees']">
            <h3><xsl:value-of select="naam" /></h3>
            <p><xsl:value-of select="beschrijving" /></p>
          </xsl:for-each>
        </div>

        <div class="vlees">
          <h1>Kipgerechten</h1>
          <h2>Overzicht</h2>
          <table class="vlees">
            <tr>
              <th>naam</th>
              <th>voorbereidingstijd</th>
              <th>bereidingstijd</th>
              <th>ingredienten</th>
            </tr>
            <xsl:for-each select="gerechten/gerecht[@class='kip']">
            <tr>
              <td class="links"><xsl:value-of select="naam" /></td>
              <td><xsl:value-of select="tijd/voorbereiding" /></td>
              <td><xsl:value-of select="tijd/bereiding" /></td>
              <td class="links">
                <ul>
                  <xsl:for-each select="ingredienten/ingredient">
                    <li><xsl:value-of select="."/></li>
                  </xsl:for-each>
                </ul>
              </td>
            </tr>
          </xsl:for-each>
          </table>

          <h2>Beschrijving</h2>
          <xsl:for-each select="gerechten/gerecht[@class='kip']">
            <h3><xsl:value-of select="naam" /></h3>
            <p><xsl:value-of select="beschrijving" /></p>
          </xsl:for-each>
        </div>

        <div class="vlees">
          <h1>Visgerechten</h1>
          <h2>Overzicht</h2>
          <table class="vlees">
            <tr>
              <th>naam</th>
              <th>voorbereidingstijd</th>
              <th>bereidingstijd</th>
              <th>ingredienten</th>
            </tr>
            <xsl:for-each select="gerechten/gerecht[@class='vis']">
            <tr>
              <td class="links"><xsl:value-of select="naam" /></td>
              <td><xsl:value-of select="tijd/voorbereiding" /></td>
              <td><xsl:value-of select="tijd/bereiding" /></td>
              <td class="links">
                <ul>
                  <xsl:for-each select="ingredienten/ingredient">
                    <li><xsl:value-of select="."/></li>
                  </xsl:for-each>
                </ul>
              </td>
            </tr>
          </xsl:for-each>
          </table>

          <h2>Beschrijving</h2>
          <xsl:for-each select="gerechten/gerecht[@class='vis']">
            <h3><xsl:value-of select="naam" /></h3>
            <p><xsl:value-of select="beschrijving" /></p>
          </xsl:for-each>
        </div>





      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>
