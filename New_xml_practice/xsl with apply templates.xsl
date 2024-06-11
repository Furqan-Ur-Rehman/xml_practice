<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Applying Templates</title>
                <style>
                    table{
                        border:0px solid black;
                        width:50%;
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
            </body>
        </html>
    </xsl:template>

    <!-- Apply Templates -->
    <xsl:template match="book">
        <xsl:apply-templates select="title" />
        <xsl:apply-templates select="author" />
    </xsl:template>


    <!-- create template for apply Templates -->
    <xsl:template match="title">
        <p><xsl:value-of select="."/></p>
    </xsl:template>

    <xsl:template match="author">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
</xsl:stylesheet>