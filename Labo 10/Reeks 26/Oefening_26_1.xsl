<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/cars">
        <html lang="en">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Reeks 26 : Oefening 1</title>
            <link rel="stylesheet" href="./Oefening_26_1.css"/>
        </head>
        <body>
            <main>
                <table>
                    <tr>
                        <th>Brand</th>
                        <th>Type</th>
                        <th>Weight</th>
                        <th>Car dimensions</th>
                        <th>Fuel type</th>
                        <th>Fuel tank capacity</th>
                        <th>Battery cell capacity</th>
                        <th>Tire dimensions</th>
                        <th>Coefficient of drag</th>
                        <th>Engine</th>
                    </tr>
                    <xsl:apply-templates select="car">
                        <xsl:sort select="brand"/>
                    </xsl:apply-templates>
                </table>
            </main>
        </body>
        </html>
    </xsl:template>


    <xsl:template match="car">
        <tr>
            <td><xsl:value-of select="brand"/></td>
            <td><xsl:value-of select="type"/></td>
            <td><xsl:value-of select="vehicule-weight"/><xsl:value-of select="vehicule-weight/@SI"/></td>
            <td>
                <ul>
                    <li>Length: <xsl:value-of select="car-dimensions/length"/><xsl:value-of select="car-dimensions/length/@SI"/></li>
                    <li>Width: <xsl:value-of select="car-dimensions/width"/><xsl:value-of select="car-dimensions/width/@SI"/></li>
                    <li>Height: <xsl:value-of select="car-dimensions/height"/><xsl:value-of select="car-dimensions/height/@SI"/></li>
                </ul>
            </td>
            <td><xsl:value-of select="fuel-type"></xsl:value-of></td>
            <td><xsl:value-of select="fuel-tank-capacity"/><xsl:value-of select="fuel-tank-capacity/@SI"/></td>
            <td><xsl:value-of select="battery-cell-capacity"/><xsl:value-of select="battery-cell-capacity/@SI"/></td>
            <td>
                <ul>
                    <li>Radius: <xsl:value-of select="tire-dimensions/tire-radius"/><xsl:value-of select="tire-dimensions/tire-radius/@SI"/></li>
                    <li>Width: <xsl:value-of select="tire-dimensions/tire-width"/><xsl:value-of select="tire-dimensions/tire-width/@SI"/></li>
                </ul>
            </td>
            <td><xsl:value-of select="coefficient-of-drag"/></td>
            <td>
                <ul>
                    <li>Type: <xsl:value-of select="engine/engine-type"/></li>
                    <li>Size: <xsl:value-of select="engine/engine-size"/><xsl:value-of select="engine/engine-size/@SI"/></li>
                    <li>Max-speed: <xsl:value-of select="engine/engine-max-speed"/><xsl:value-of select="engine/engine-max-speed/@SI"/></li>
                    <li>Max-power: <xsl:value-of select="engine/engine-max-power"/><xsl:value-of select="engine/engine-max-power/@SI"/></li>
                    <li>Cylinders: <xsl:value-of select="engine/number-of-cylinders"/></li>
                </ul>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>