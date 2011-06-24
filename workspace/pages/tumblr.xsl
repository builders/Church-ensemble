<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:import href="../utilities/master.xsl"/>



<xsl:template match="data">
	
	<h1>
	   <a href="{$root}">
	       <xsl:value-of select="$website-name" />
	   </a>
	</h1>

	
	<div class="left_column">
	   
	   <xsl:call-template name="tumblr">
	       <xsl:with-param name="tumblr" select="$tumblr" />
	   </xsl:call-template>
	
	</div>

	<div class="right_column">
	   
        <p>
            For older posts to this blog, go to 
            <a href="http://{$tumblr}.tumblr.com/page/3"><xsl:value-of select="$tumblr" />.tumblr.com</a>
        </p>
	   
	</div>
	
</xsl:template>
	


</xsl:stylesheet>
