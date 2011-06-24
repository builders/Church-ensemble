<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="locations/entry">
    
    <xsl:call-template name="google-map">
        <xsl:with-param name="loc" select="." />
    </xsl:call-template>

</xsl:template>



<xsl:template name="location-per-event">
    
    <div class="location">
    
        <xsl:variable name="name" select="locations/item" />
        <xsl:variable name="event" select="//locations-per-id/entry[name = $name]" />
        
        <h5><xsl:value-of select="$name" /></h5>
        
        <address>
            <span class="address"><xsl:value-of select="$event/address" /></span>
            <span class="city"><xsl:value-of select="$event/city" /></span>
            <span class="state"><xsl:value-of select="$event/state" /></span>
            <span class="zip"><xsl:value-of select="$event/zip" /></span>
            <span class="country"><xsl:value-of select="$event/country" /></span>
        </address>
        
        <div class="map">
            <xsl:call-template name="google-map">
                <xsl:with-param name="loc" select="$event" />
            </xsl:call-template>
        </div>
        
    </div>
    
</xsl:template>



</xsl:stylesheet>