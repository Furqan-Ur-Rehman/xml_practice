<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> <!--Value of Xpath here in match attribute-->
        <html>
            <head>
                <title>XML with XSL</title>
                <style>
                    table{
                        width:50%;
                        border:0px solid black;
                        margin:auto;

                    }
                    th{
                        background-color:lightgrey;
                    }
                    td{
                        border:1px solid lightgrey;
                    }
                </style>
            </head>

            <body>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Qualification</th>
                        <th>DOB</th>
                    </tr>
                    <xsl:for-each select="Persons/person">
                    <xsl:sort select="name" order="descending" case-order="upper-first|lower-first"/>
                    <xsl:choose>
                    <xsl:when test="age &gt;= 25">
                    <!-- or -->
                    <!-- <xsl:if test="age &gt; 25"> -->
                    <tr>

                        <td>
                            <xsl:value-of select="@id" />
                        </td>
                
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="age" />
                        </td>
                        <td>
                            <xsl:value-of select="salary" />
                        </td>
                        <td>
                            <xsl:value-of select="qualification" />
                        </td>
                        <td>
                            <xsl:value-of select="DOB" />
                        </td>
                    </tr>
                    <!-- </xsl:if> -->
                    </xsl:when>
                    <xsl:otherwise>
                        <p>Data is not fulfil the condition.</p>
                    </xsl:otherwise>
                    </xsl:choose>
                    </xsl:for-each>
                
                </table>
                <br/>
                <br/>
                <br/>
                
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>



