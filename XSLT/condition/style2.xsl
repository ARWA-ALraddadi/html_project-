<?xml version="1.0" ?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/example">
    <html>
      <head> 
        <title>XSLT example</title> 
      </head>
      <body>

    
        <xsl:for-each select="data"> 
          <xsl:if test="(num &lt; 10) and (num &gt; -2)">
            <xsl:value-of select="num" />,
            <xsl:value-of select="num  * 2" />,
            <xsl:value-of select="num + 3" />,
          </xsl:if>
        </xsl:for-each>

        <br /><br />

        ordered by num:<br /> 
        <xsl:for-each select="data">
          <xsl:sort select="num"/>
          <xsl:value-of select="num" />,
        </xsl:for-each>

        <br /><br />

        ordered by num with data-type=number:<br />
        <xsl:for-each select="data">
          <xsl:sort select="num" data-type="number" />
            <xsl:value-of select="num" />,
        </xsl:for-each> 
   
        <br /><br />

        if num = 13:<br />
        <xsl:for-each select="data"> 
          <xsl:if test="num = 13">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each>

        <br /><br />

        if num > 13:<br />
        <xsl:for-each select="data"> 
          <xsl:if test="num &gt; 13">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each>

        <br /><br />

        if num &gt; 0:
        <xsl:for-each select="data"> 
          <xsl:if test="num &gt; 0">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each> 

        <br /><br />


        if number(num) &gt; 0:
        <xsl:for-each select="data"> 
          <xsl:if test="number(num) &gt; 0">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each> 
        <br />
 
        if number(num) &gt;= 0:
        <xsl:for-each select="data"> 
          <xsl:if test="number(num) &gt;= 0">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each> 
        <br />

        if number(num) &lt; 10:
        <xsl:for-each select="data"> 
          <xsl:if test="number(num) &lt; 10">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each> 
        <br />
 
        if number(num) &lt;= 10:
        <xsl:for-each select="data"> 
          <xsl:if test="number(num) &lt;= 10">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each> 
	
        <br />
 
        if num = 5:
        <xsl:for-each select="data"> 
          <xsl:if test="num = 5">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each>
	
        <br />
 
        if num != 5:
        <xsl:for-each select="data"> 
          <xsl:if test="num != 5">
            <xsl:value-of select="num" />,
          </xsl:if>
        </xsl:for-each>

      </body>
    </html>
  </xsl:template> 

</xsl:stylesheet>
 