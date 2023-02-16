<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=MML_CHTML"></script>
            </head>

            <body>
                <math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
                    <mrow>
                        <mi><xsl:value-of select="строка/операнд"/></mi> <mo><xsl:value-of select="строка/оператор[1]"/></mo>
                        <msqrt>
                            <mrow>
                                <mfrac>
                                    <mrow>
                                        <mn><xsl:value-of select="строка/корень/строка/дробь/строка/число"/></mn>
                                    </mrow>
                                    <mrow>
                                        <mi><xsl:value-of select="строка/корень/строка/дробь/строка/операнд"/></mi>
                                    </mrow>
                                </mfrac>
                                <mrow>
                                    <munderover>
                                        <mrow>
                                            <mo><xsl:value-of select="строка/корень/строка/строка/низверх/строка[1]/оператор"/></mo>
                                        </mrow>
                                        <mrow>
                                            <mi><xsl:value-of select="строка/корень/строка/строка/низверх/строка[2]/операнд"/></mi>
                                            <mo><xsl:value-of select="строка/корень/строка/строка/низверх/строка[2]/оператор"/></mo>
                                            <mn><xsl:value-of select="строка/корень/строка/строка/низверх/строка[2]/число"/></mn>
                                        </mrow>
                                        <mrow>
                                            <mi><xsl:value-of select="строка/корень/строка/строка/низверх/строка[3]/операнд"/></mi>
                                        </mrow>
                                    </munderover>
                                    <mrow>
                                        <msup>
                                            <mrow>
                                                <mo><xsl:value-of select="строка/корень/строка/строка/строка/верх/строка[1]/оператор[1]"/></mo>
                                                <msub>
                                                    <mrow>
                                                        <mi><xsl:value-of select="строка/корень/строка/строка/строка/верх/строка[1]/низ/строка[1]/операнд"/></mi>
                                                    </mrow>
                                                    <mrow>
                                                        <mi><xsl:value-of select="строка/корень/строка/строка/строка/верх/строка[1]/низ/строка[2]/операнд"/></mi>
                                                    </mrow>
                                                </msub>
                                                <mo><xsl:value-of select="строка/корень/строка/строка/строка/верх/строка[1]/оператор[2]"/></mo>
                                                <mi><xsl:value-of select="строка/корень/строка/строка/строка/верх/строка[1]/операнд"/></mi>
                                                <mo><xsl:value-of select="строка/корень/строка/строка/строка/верх/строка[1]/оператор[3]"/></mo>
                                            </mrow>
                                            <mrow>
                                                <mn><xsl:value-of select="строка/корень/строка/строка/строка/верх/строка[2]/число"/></mn>
                                            </mrow>
                                        </msup>
                                    </mrow>
                                </mrow>
                            </mrow>
                        </msqrt>

                        <mo><xsl:value-of select="строка/оператор[2]"/></mo>
                    </mrow>
                </math>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
