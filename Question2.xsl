<?xml version="1.0" ?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:template match = "/ItemCheckOut">
    <html>
      <head>
        <Title> Patron Record </Title>
      </head>
      <body>
        <h1>
          <xsl:text> Patron record: </xsl:text>
          <xsl:value-of select="@userFName"/>
          <xsl:value-of select="@userLName"/>
        </h1>
        <xsl:for-each select="Item">
          <xsl:value-of select="Title"/> <br />
          <xsl:value-of select="Authors"/> <br />
          <xsl:value-of select="CallNumber"/> <br />
          <xsl:value-of select="DueTate"/> <br />
          <xsl:value-of select="Overdue"/> <br />
          <br />
       </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
