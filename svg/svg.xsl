<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <svg width="{графика/@ширина}" height="{графика/@высота}">
                    <xsl:variable name="ellipses" select="графика/эллипс"/>


                    <xsl:for-each select="$ellipses">
                        <xsl:variable name="id" select="@id"/>
                        <xsl:variable name="fill" select="@заливка"/>
                        <xsl:variable name="stroke" select="@ободок"/>
                        <xsl:variable name="stroke-width" select="@ширина-ободка"/>
                        <xsl:variable name="cx" select="@cx"/>
                        <xsl:variable name="cy" select="@cy"/>
                        <xsl:variable name="rx" select="@rx"/>
                        <xsl:variable name="ry" select="@ry"/>

                        <ellipse id="{$id}" fill="{$fill}" stroke="{$stroke}" stroke-width="{$stroke-width}" cx="{$cx}" cy="{$cy}" rx="{$rx}" ry="{$ry}" />
                    </xsl:for-each>
                </svg>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


