<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="twitter">
   
   <div class="twitter module">
        
        <h4>@AtheyCreek on Twitter</h4>
        
        <ul>
        	<xsl:apply-templates select="twitter//atom:entry[position() &lt;= 3]" />
        </ul>
	</div>
	
</xsl:template>


<xsl:template match="twitter//atom:entry">
    
    <li>
        
        <cite>
            <a href="{atom:author/atom:uri}">@<xsl:value-of select="atom:author/atom:name" /></a>
        </cite>
        
        <xsl:text>: </xsl:text>
        
        <xsl:value-of select="atom:content" disable-output-escaping="yes" />
                
    </li>
    
</xsl:template>



</xsl:stylesheet>