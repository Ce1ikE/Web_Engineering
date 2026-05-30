<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/library">
        <html lang="en">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Reeks 26 : Oefening 2</title>
            <link rel="stylesheet" href="./Oefening_26_2.css"/>
        </head>
        <body>
            <main>
                <table>
                    <tr>
                        <th>Author</th>
                        <th>Draftsman</th>
                        <th>screenwriter</th>
                        <th>serie</th>
                        <th>genre</th>
                        <th>type</th>
                        <th>Number in serie</th>
                        <th>title</th>
                        <th>release year</th>
                        <th>publishing house</th>
                        <th>isbn</th>
                    </tr>
                    <xsl:apply-templates select="book">
                        <xsl:sort select="serie"/>
                    </xsl:apply-templates>
                </table>
            </main>
        </body>
        </html>
    </xsl:template>


    <xsl:template match="book">
        <tr>
            <td><xsl:value-of select="author"/></td>
            <td>
                <ul>
                    <xsl:apply-templates select="draftsman/person"/>
                </ul>
            </td>
            <td>
                <ul>
                    <xsl:apply-templates select="screenwriter/person"/>
                </ul>
            </td>
            <td><xsl:value-of select="serie"></xsl:value-of></td>
            <td><xsl:value-of select="serie/@genre"/></td>
            <td><xsl:value-of select="serie/@type"/></td>
            <td><xsl:value-of select="number-in-serie"/></td>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="release-year"/></td>
            <td><xsl:value-of select="publishing-house"/></td>
            <td><xsl:value-of select="isbn"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="draftsman/person">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

    <xsl:template match="screenwriter/person">
        <li><xsl:value-of select="."/></li>
    </xsl:template>


</xsl:stylesheet>