<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="UTF-8"/>

	<xsl:template match="/">

		<strong>Kõik suunad</strong>

		<xsl:for-each select="reis/suund">

			<h1>
				<xsl:value-of select="@id"/>
			</h1>

			<ul>
				<li style="background-color: yellow;">
					<strong>
						<xsl:value-of select="concat(nimetus, '  ', riik, '  ', Pikkus)"/>
					</strong>
				</li>
			</ul>

		</xsl:for-each>

	</xsl:template>

</xsl:stylesheet>