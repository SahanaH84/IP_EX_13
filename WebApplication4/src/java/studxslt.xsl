<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules syntax recommendation http://www.w3.org/TR/xslt -->
    
    <xsl:template match="/">
        <html>
            <head>
                <title>studxslt.xsl</title>
                <style type="text/css">
                  .gradeA {
                      background-color: yellow;
                     }
                </style>
            </head>
            <body>
                <h1>Student Grades</h1>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Grade</th>
          </tr>
          <xsl:for-each select="students/student">
            <xsl:if test="grade='A'">
              <tr class="gradeA">
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="grade"/></td>
              </tr>
            </xsl:if>
            <xsl:if test="grade!='A'">
              <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="grade"/></td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>