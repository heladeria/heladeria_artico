<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="cssheladeria.css"/>
	</head>
	<body background="plumas.png">
		<h1>Heladería</h1>
		<table border="50">
			<tr bgcolor="117F27">
				<th>cod_h</th>
				<th>dni_r</th>
				<th>tlf_r</th>
				<th>nombre_r</th>
				<th>apellidos_r</th>
				<th>precio</th>
				<th>cantidad</th>
				<th>dni_t</th>
				<th>tlf_t</th>
				<th>nombre_t</th>
				<th>apellidos_t</th>
				<th>cod_r</th>
				<th>capacidad</th>
				<th>temperatura</th>
			</tr>
			<xsl:for-each select="heladeria/helados">
			<tr>
				<td><xsl:value-of select="reposteros/cod_h"/></td>
				<td><xsl:value-of select="reposteros/dni_r"/></td>
				<td><xsl:value-of select="reposteros/tlf_r"/></td>
				<td><xsl:value-of select="reposteros/nombre_r"/></td>
				<td><xsl:value-of select="reposteros/apellidos_r"/></td>
				<td><xsl:value-of select="precio"/></td>
				<td><xsl:value-of select="cantidad"/></td>
				<td><xsl:value-of select="transportistas/dni_t"/></td>
				<td><xsl:value-of select="transportistas/tlf_t"/></td>
				<td><xsl:value-of select="transportistas/nombre_t"/></td>
				<td><xsl:value-of select="transportistas/apellidos_t"/></td>
				<td><xsl:value-of select="refrigerador/cod_r"/></td>
				<td><xsl:value-of select="refrigerador/capacidad"/></td>
				<td><xsl:value-of select="refrigerador/temperatura"/></td>
			</tr>
			</xsl:for-each>
		</table>
		<br/><br/><br/><br/><br/>
		<center><img src="dragon.png"/></center>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>