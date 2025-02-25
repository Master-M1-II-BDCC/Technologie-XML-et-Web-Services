<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/releve">
        <html>
            <head><title>Question 5</title></head>
            <body>
                <h3>une feuille de style XSL qui permet d’afficher au format HTML les opérations de type
                    CREDIT d’un relevé bancaire.
                </h3>
                <p>----------------- Les opération de type crédit ------------------</p>
                <table border="1" width="80%">
                    <tr>
                        <th>DATE</th>
                        <th>TYPE</th>
                        <th>MONTANT</th>
                        <th>DESCRIPTION</th>
                    </tr>
                    <xsl:for-each select="operations/operation[@type='CREDIT']">
                        <tr>
                            <th><xsl:value-of select="@date"></xsl:value-of></th>
                            <th><xsl:value-of select="@type"></xsl:value-of></th>
                            <th><xsl:value-of select="@montant"></xsl:value-of></th>
                            <th><xsl:value-of select="@description"></xsl:value-of></th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>