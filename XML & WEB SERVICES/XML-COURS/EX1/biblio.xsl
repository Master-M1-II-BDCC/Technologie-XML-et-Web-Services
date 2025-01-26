<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Biblio</title>
            </head>
            <body>
                <h3>Liste des étudiants</h3>
               
                    <xsl:for-each select="/biblio/etudiant">
                        <ul>
                            <li>Code : <xsl:value-of select="@code" /></li>
                            <li>Nom : <xsl:value-of select="@nom" /></li>
                            <li>Prénom : <xsl:value-of select="@prenom" /></li>
                            <li>Age : <xsl:value-of select="@age" /></li>
                        </ul>
                        <table border="1" width="75%" >
                            <tr>
                                <th>ID</th><th>TITRE</th><th>DATE</th><th>RENDU</th>
                            </tr>
                            <xsl:for-each select="livre">
                                <tr>
                                    <td><xsl:value-of select="@id"></xsl:value-of></td>
                                    <td><xsl:value-of select="@titre"></xsl:value-of></td>
                                    <td><xsl:value-of select="@dateEmprut"></xsl:value-of></td>
                                    <td><xsl:value-of select="@rendu"></xsl:value-of></td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <td colspan="2" >Nombre de livres empruntés </td><td colspan="2" ><xsl:value-of select="count(livre)" ></xsl:value-of></td>
                            </tr>
                            <tr>
                                <td colspan="2" >Nombre de livres non rendus </td><td colspan="2" ><xsl:value-of select="count(livre[@rendu='NON'])" ></xsl:value-of></td>
                            </tr>
                        </table>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
