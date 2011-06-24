<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="google-map">
   
   <xsl:param name="meta"/>
   <xsl:param name="loc"/>
   
   <xsl:choose>
   
        <xsl:when test="
            $loc/address/@handle
        ">
        
            <iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?q={$loc/address/@handle}+{$loc/city/@handle},-{$loc/state/@handle}-{$loc/zip/@handle}&amp;ll={$loc/latitude},{$loc/longitude}&amp;z=14&amp;output=embed"></iframe>
        
        </xsl:when>
   
        <xsl:otherwise>
        
            <iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?q={$loc/latitude},{$loc/longitude}&amp;ll={$loc/latitude},{$loc/longitude}&amp;z=11&amp;output=embed"></iframe>
        
        </xsl:otherwise>
   
    </xsl:choose>

</xsl:template>



</xsl:stylesheet>