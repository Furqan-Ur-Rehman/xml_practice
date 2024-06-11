<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
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
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Price</th>
                        
                    </tr>

                    <tr>
                        <td><xsl:apply-templates /></td>
                    </tr>
                
                </table>
                <br/>
                <br/>
                <br/>
            </body>
        </html>

    </xsl:template>

    <!-- Apply templates -->

    <xsl:template match="book">
        <xsl:apply-templates select="title" />
        <xsl:apply-templates select="author" />
    </xsl:template>

    
    <!-- Create templates for apply-templates -->

    <xsl:template match="title">
        <p><xsl:value-of select="." /></p>
    </xsl:template>

    <xsl:template match="author">
        <p><xsl:value-of select="." /></p>
    </xsl:template>
</xsl:stylesheet>



