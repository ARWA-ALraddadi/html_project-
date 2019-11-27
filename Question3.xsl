<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <xsl:template match="/ItemCheckOut">
    <html>
      <head>
        <title>ItemCheckOut</title>
      </head>
      <body>
        <h1>
          <xsl:text> Patron record: </xsl:text>
          <xsl:value-of select="@userFName"/>
          <xsl:value-of select="@userLName"/>
        </h1>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Authors</th>
            <th>Call Number</th>
            <th>Due</th>
            <th>Overdue</th>
          </tr>

          <xsl:for-each select="Item">
            <tr>
              <td>
                <xsl:value-of select="Title"/>
              </td>
              <td>
                <xsl:value-of select="Authors" />
              </td>
              <td>
                <xsl:value-of select="CallNumber" />
              </td>
              <td>
                <xsl:value-of select="DueTate" />
              </td>
              <xsl:choose>
              <xsl:when test="Overdue = Overdue ">
              <td> <xsl:text> Yes  </xsl:text> </td>
              </xsl:when>
              <xsl:otherwise>
              <td> <xsl:text> No </xsl:text> </td>
              </xsl:otherwise>
              </xsl:choose>

            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
