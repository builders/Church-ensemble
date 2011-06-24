<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:import href="../utilities/master.xsl"/>



<xsl:template match="data">

    <div class="content">
    
        <div class="left_column">
            
            <xsl:call-template name="events-upcoming" />
        
        </div>
        
        <div class="right_column">
            
            <xsl:call-template name="scripture" />
        
        </div>
        
    </div>
	
	<!-- 
	<div class="left_column">
        
        <xsl:call-template name="ustream" />
	   
        <xsl:apply-templates select="text/entry" />
	   	   
        
        
        <xsl:call-template name="gallery" />
        
        <xsl:call-template name="tumblr" />
        
        <xsl:apply-templates select="locations/entry" />
        
	</div>

	<div class="right_column">

    	<xsl:apply-templates select="tips/entry" />
    	
	</div> -->
	
</xsl:template>



</xsl:stylesheet>
