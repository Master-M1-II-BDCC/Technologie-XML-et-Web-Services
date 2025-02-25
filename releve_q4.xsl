<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head><title>Question 4</title></head>
            <body>
                <h3>une feuille de style XSL qui permet d’afficher les toutes les données du document
                    XML au format HTML en affichant le total des opérations de débit et le total des
                    opérations de crédit.
                </h3>
                <p>RIB du relevé : <xsl:value-of select="/releve/@RIB"></xsl:value-of></p>
                <p>Date du relevé : <xsl:value-of select="/releve/dateReleve"></xsl:value-of></p>
                <p>Solde : <xsl:value-of select="/releve/solde"></xsl:value-of></p>
                <p>Début des opérations : <xsl:value-of select="/releve/operations/@dateDebut"></xsl:value-of></p>
                <p>Fin des opérations : <xsl:value-of select="/releve/operations/@dateFin"></xsl:value-of></p>
                <ul>
                    <li>Opération de débit</li>
                </ul>
                <table border="1" width="80%">
                    <tr>
                        <th>date</th>
                        <th>type</th>
                        <th>description</th>
                        <th>montant</th>
                    </tr>
                    <xsl:for-each select="/releve/operations/operation[@type='DEBIT']">
                        <tr>
                            <th><xsl:value-of select="@date"></xsl:value-of></th>
                            <th><xsl:value-of select="@type"></xsl:value-of></th>
                            <th><xsl:value-of select="@description"></xsl:value-of></th>
                            <th><xsl:value-of select="@montant"></xsl:value-of></th>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <th colspan="3">La somme</th>
                        <th colspan="1"><xsl:value-of select="sum(/releve/operations/operation[@type='DEBIT']/@montant)"></xsl:value-of></th>
                    </tr>
                </table>
                
                <ul>
                    <li>Opération de crédit</li>
                </ul>
                <table border="1" width="80%">
                    <tr>
                        <th>date</th>
                        <th>type</th>
                        <th>description</th>
                        <th>montant</th>
                    </tr>
                    <xsl:for-each select="/releve/operations/operation[@type='CREDIT']">
                        <tr>
                            <th><xsl:value-of select="@date"></xsl:value-of></th>
                            <th><xsl:value-of select="@type"></xsl:value-of></th>
                            <th><xsl:value-of select="@description"></xsl:value-of></th>
                            <th><xsl:value-of select="@montant"></xsl:value-of></th>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <th colspan="3">La somme</th>
                        <th colspan="1"><xsl:value-of select="sum(/releve/operations/operation[@type='CREDIT']/@montant)"></xsl:value-of></th>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>