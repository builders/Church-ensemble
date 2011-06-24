<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="tumblr">
   
   <xsl:param name="tumblr"/>
   
   <div class="tumblr module">
        
        
            
        <xsl:choose>
            <xsl:when test="$current-page = 'tumblr'">
                <a href="{$root}/tumblr/{$tumblr}/">
                    <h3>
                        <xsl:value-of select="tumblr-api//title" />
                    </h3>
                </a>
            </xsl:when>
            <xsl:otherwise>
                <a href="{$root}/tumblr/{$ds-tumblr}/">
                    <h4>
                        <xsl:value-of select="tumblr-api-ds//title" />
                    </h4>
                </a>
            </xsl:otherwise>
        </xsl:choose>
        
        
        <xsl:choose>
        	<xsl:when test="$current-page = 'tumblr' and $tumblr-entry">

                <div>
                    <xsl:apply-templates select="tumblr-api//item[position() = $tumblr-entry]" />
                </div>

        	</xsl:when>
        	<xsl:when test="$current-page = 'tumblr'">

                <div>
                    <xsl:apply-templates select="tumblr-api//item" />
                </div>

        	</xsl:when>
        	<xsl:otherwise>
        	
                <ul>
                    <xsl:apply-templates select="tumblr-api-ds//item[position() &lt;= 3]" />
                </ul>
                
        	</xsl:otherwise>
        </xsl:choose>
        
	</div>
	
</xsl:template>



<xsl:template match="tumblr-api//item">

    <div>
        <a href="{$root}/tumblr/{$tumblr}/{position()}/">
            <h3><xsl:value-of select="title" /></h3>
        </a>
        <div>
            <xsl:value-of select="description" disable-output-escaping="yes" />
        </div>
    </div>
    
</xsl:template>



<xsl:template match="tumblr-api-ds//item">
        	
    <li>
        <a href="{$root}/tumblr/{$ds-tumblr}/{position()}/">
            <xsl:value-of select="title" />
        </a> 
    </li>
    
</xsl:template>



</xsl:stylesheet>