<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="scripture">
    
    <xsl:if test="verses/entry">
        <div class="scripture">
            
            <h3>Scripture</h3>
            
            <xsl:apply-templates select="verses/entry" />
        
        </div>    	
    </xsl:if>
    
</xsl:template>



<xsl:template match="verses/entry">

    <p>
        <xsl:text>“</xsl:text>
        <xsl:value-of select="//data/bible-verse-api/response/text" />
        <xsl:text>”</xsl:text>
    </p>
    
    <cite>
        <xsl:value-of select="verse" />
    </cite>

</xsl:template>



</xsl:stylesheet>