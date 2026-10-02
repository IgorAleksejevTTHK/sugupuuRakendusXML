<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">

	<xsl:output method="html" indent="yes"/>

	<xsl:param name="otsing" select="'a'"/>
	<xsl:param name="pikkus" select="5"/>

	<xsl:template match="/">
		<strong>Kõik sugupuu nimed</strong>

		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="concat(nimi, ' — süniaasta: ', @synd, ', vanus: ', 2026 - @synd)"/>
				</li>
			</xsl:for-each>
		</ul>

		<ol>
			<li>
				Esimene täht kõikidest nimedest
				<br/>
				<xsl:for-each select="//inimene">
					<xsl:value-of select="substring(nimi, 1, 1)"/>,
				</xsl:for-each>
			</li>

			<li>
				Näita nimed ja tähtede kogused:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="concat(nimi, ': ', string-length(nimi))"/>,
				</xsl:for-each>
			</li>
		</ol>
		<strong> Parameetri kasutamine</strong>
		Otsime nimed mis sisaldavad pareemt otsing=
		<xsl:value-of select="$otsing"/>
		<br></br>
		<xsl:for-each select="//inimene[contains(nimi, $otsing)]">
			<xsl:value-of select="nimi"/>
			<xsl:text> </xsl:text>
		</xsl:for-each>
		<br></br>
		Otsime nimed mis pikkusega =
		<xsl:value-of select="$pikkus"/> ja rohkem
		<br></br>
		<xsl:for-each select="//inimene[string-length(nimi)>=$pikkus]">
			<xsl:value-of select="concat(nimi, ' pikkus: ', string-length(nimi),' |') "/>
		</xsl:for-each>
		<br></br>
		<br></br>
		<strong>Kasutame if lause:</strong>

		Iga inimese kohta näitame mitmendal oma vanema sünnaastal ta sündis
	<ul>
    <xsl:for-each select="//inimene">
        <li>
            <xsl:value-of select="nimi"/>
            <xsl:if test="../..">
                - vanema vanus oli -
                <xsl:value-of select="../../@synd - @synd"/>
                aastat vana
            </xsl:if>
        </li>
    </xsl:for-each>
</ul>

		<strong>Värviline tabel:</strong>
		<table border="1">
			<tr>
				<th>Nimi</th>
			</tr>

			<xsl:for-each select="//inimene">
				<tr>
					<td>
						<xsl:if test="string-length(nimi) &gt; 7">
							<xsl:attribute name="style">
								background-color: green
							</xsl:attribute>
						</xsl:if>

						<xsl:value-of select="nimi"/>
					</td>
				</tr>
			</xsl:for-each>
		</table>






					<table border="1">
			<tr>
				<th>Nimi</th>
				<th>Aasta</th>
				<th>Vanus</th>
				<th>1. täht</th>
				<th>Viimane täht</th>
				<th>Tähtede arv</th>
			</tr>

			<xsl:for-each select="//inimene">
				<tr>
					<td>
						<xsl:value-of select="nimi"/>
					</td>
					<td>
						<xsl:value-of select="@synd"/>
					</td>
					<td>
						<xsl:value-of select="2026 - @synd"/>
					</td>
					<td>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>
					<td>
						<xsl:value-of select="substring(nimi, string-length(nimi), 1)"/>
					</td>
					<td>
						<xsl:value-of select="string-length(nimi)"/>
					</td>
				</tr>
			</xsl:for-each>

		</table>

	</xsl:template>

</xsl:stylesheet>