<?xml 
    version="1.0" 
    encoding="UTF-8"
    ?>
<xsl:stylesheet 
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:atom="http://www.w3.org/2005/Atom"
    exclude-result-prefixes="atom"
    >



<xsl:template name="tag-formal">

    <xsl:choose>
    
        <xsl:when test="not($tag)">
            <xsl:choose>
            	<xsl:when test="$current-page = 'index'">
            		<xsl:value-of select="//tags/entry[@id = 22]/title" />
            	</xsl:when>
            	<xsl:otherwise>
            		<xsl:value-of select="$page-title" />
            	</xsl:otherwise>
            </xsl:choose>
            
        </xsl:when>
        
        <xsl:when test="tags/entry[tag/@handle = $tag]/title">
            <xsl:value-of select="//tags/entry[tag/@handle = $tag]/title" />
        </xsl:when>
        
        <xsl:otherwise>
            <xsl:value-of select="//tags/entry[tag/@handle = $tag]/tag" />
        </xsl:otherwise>
        
    </xsl:choose>

</xsl:template>



<xsl:template match="tags/entry">

    <a href="{$root}/{tag/@handle}/">
        <xsl:value-of select="tag" />
    </a>
    <xsl:text> &#160; </xsl:text>
    

</xsl:template>



<xsl:template match="tips/entry">
    
    <div class="tip">
        <xsl:value-of select="text" disable-output-escaping="yes" />
    </div>
    
</xsl:template>



<xsl:template match="text/entry">

    <xsl:value-of select="text" disable-output-escaping="yes" />

</xsl:template>



<xsl:template name="gallery">
   
   <xsl:apply-templates select="galleries/entry" />

</xsl:template>



<xsl:template match="galleries/entry">

    <xsl:variable name="name" select="name" />
    
    <div class="gallery module">
    
        <h4>Featured gallery, <xsl:value-of select="name" /></h4>
        
        <ul>
            <xsl:apply-templates select="//data/photos-per-gallery/entry[galleries/item = $name and position() &lt;= 10]" />
        </ul>
    
    </div>

</xsl:template>



<xsl:template match="photos-per-gallery/entry">
    
    <li>
        <img src="{$root}/image/2/100/100/5/0{photo/@path}/{photo/filename}" width="100" height="100" />
    </li>
    
</xsl:template>



</xsl:stylesheet>