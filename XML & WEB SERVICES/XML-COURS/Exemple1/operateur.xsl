<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Opérateur</title>
            </head>
            <body>
                <h3>Liste des clients</h3>
                <xsl:for-each select="/operateur/client">
                    <h3>Nom du client : <xsl:value-of select="@nom"></xsl:value-of></h3>
                    <table border="1" width="75%">
                        <tr>
                            <td>Num Abonnement</td>
                            <td>Type</td>
                            <td>Date Abonnement</td>
                            <td>Montant total des factures</td>
                        </tr>
                        <xsl:for-each select="abonnement">
                            <tr>
                                <td><xsl:value-of select="@numero"></xsl:value-of></td>
                                <td><xsl:value-of select="@type"></xsl:value-of></td>
                                <td><xsl:value-of select="@dateAb"></xsl:value-of></td>
                                <td><xsl:value-of select="sum(facture/@montant)" ></xsl:value-of></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>