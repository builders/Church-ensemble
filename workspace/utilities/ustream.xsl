<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="ustream-live">

    <div>

        <xsl:choose>
        	<xsl:when test="//data/ustream-api/xml/results/status = 'live'">
                <xsl:attribute name="class">module watch_live on</xsl:attribute>
                    <p>
                        <a href="{$root}/live/">Online</a>
                    </p>
        	</xsl:when>
        	<xsl:when test="//data/ustream-api/xml/results/status = 'offline'">
                <xsl:attribute name="class">module watch_live off</xsl:attribute>
                <p>
                    <xsl:text>Offline</xsl:text>
                </p>
        	</xsl:when>
        	<xsl:otherwise>
                <p>
                    <xsl:text>Error</xsl:text>
                </p>
        	</xsl:otherwise>
        </xsl:choose>
    
    </div>

</xsl:template>



<xsl:template name="ustream">
    
    <xsl:variable name="width" select="'100%'" />
    <xsl:variable name="height" select="'100%'" />
    <xsl:variable name="id" select="//data/ustream-latest/xml/results/id" />
    
    <div class="ustream">
        
        <!-- <xsl:value-of select="//data/ustream-latest/xml/results/embedTag" disable-output-escaping="yes" /> -->

        <object 
            width="{$width}" 
            height="{$height}">
            
            <param 
                name="flashvars" 
                value="autoplay=false&amp;brand=embed&amp;cid={$id}"
                />
            <param 
                name="allowfullscreen" 
                value="true"
                />
            <param 
                name="allowscriptaccess" 
                value="always"
                />
            <param 
                name="movie" 
                value="http://www.ustream.tv/flash/viewer.swf"
                />
            <embed 
                flashvars="autoplay=false&amp;brand=embed&amp;cid={$id}" 
                width="{$width}" 
                height="{$height}" 
                allowfullscreen="true" 
                allowscriptaccess="always"
                src="http://www.ustream.tv/flash/viewer.swf" 
                type="application/x-shockwave-flash" 
                />
                
        </object>
        
    </div>
    
</xsl:template>



</xsl:stylesheet>