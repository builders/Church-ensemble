<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="event-profile">
    
    <div class="event profile">

        <xsl:apply-templates select="event-per-id/entry" />
        
    </div>
    
</xsl:template>



<xsl:template match="event-per-id/entry">

    <div>
    
        <xsl:call-template name="event-add-classes" />
        
        <h3><xsl:value-of select="name" /></h3>
        
        <div class="description">
            <xsl:value-of select="description" disable-output-escaping="yes" />
        </div>
        
        <xsl:call-template name="location-per-event" />
        
    </div>

</xsl:template>



<xsl:template name="event-add-classes">
    
    
    <xsl:attribute name="class">
        
        <xsl:text>event</xsl:text>
        
        <xsl:for-each select="tags/item">
            <xsl:if test="not(@handle = 'events')">
            	<xsl:text> </xsl:text>
            	<xsl:value-of select="@handle" />
            </xsl:if>

        </xsl:for-each>
        
    </xsl:attribute>

</xsl:template>



<xsl:template name="events-upcoming">
    
    <xsl:if test="events/entry">
    	
        <div class="events">
            
            <h3>Upcoming events</h3>
            
            <xsl:apply-templates select="events/entry" />
            
        </div>
    	
    </xsl:if>

    
</xsl:template>



<xsl:template match="events/entry">

    <div>
    
        <xsl:call-template name="event-add-classes" />
        
        <h4><a href="{$root}/event/{@id}/#/{name/@handle}/"><xsl:value-of select="name" /></a></h4>
        
        <div class="details">
            
        </div>
        
        <div class="description">
            <xsl:value-of select="description" disable-output-escaping="yes" />
        </div>
        
        <xsl:call-template name="location-per-event" />
        
    </div>

</xsl:template>



</xsl:stylesheet>