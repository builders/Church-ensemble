<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template name="nav-level-1">

    <ul>
        <xsl:for-each select="//data/tags/entry">
            <xsl:if test="
                not(string-length(parents/item)) and 
                not(tag/@handle = 'unknown') and
                not(tag/@handle = 'home')
                ">
            	<xsl:call-template name="nav-item">
            		<xsl:with-param name="item" select="tag" />
            	</xsl:call-template>
            </xsl:if>
        </xsl:for-each>
    </ul>

</xsl:template>



<xsl:template name="nav-level-2">
        
    <xsl:variable name="parents" select="
        //data/tags/entry[
            $tag = parents/item/@handle and 
            not(tag/@handle = 'unknown') and
            not(tag/@handle = 'home') and
            $tag
            ]
        " />
<!-- not(parents/item) and -->
    <ul> 
    
        <xsl:choose>
            <xsl:when test="count($parents)"> <!-- show children -->
            
                <xsl:for-each select="$parents">
                    <xsl:call-template name="nav-item">
                        <xsl:with-param name="item" select="tag" />
                    </xsl:call-template>
                </xsl:for-each>
                
            </xsl:when>
            <xsl:otherwise> <!-- show siblings -->
            
                <xsl:variable name="parent" select="//data/tags/entry[tag/@handle = $tag]/parents/item" />
                
                <xsl:for-each select="//data/tags/entry[parents/item = $parent]">
                    <xsl:call-template name="nav-item">
                        <xsl:with-param name="item" select="tag" />
                    </xsl:call-template>
                </xsl:for-each>
            
            </xsl:otherwise>
        </xsl:choose>
             
    </ul>

</xsl:template>



<xsl:template name="nav-item">
    
    <xsl:param name="item" />

    <li>
        <xsl:attribute name="class">
            <xsl:value-of select="$item/@handle" />
        </xsl:attribute>
        <a href="{$root}/{$item/@handle}/">
            <xsl:value-of select="$item" />
        </a>
    </li>

</xsl:template>



<xsl:key name="kChildren" match="tag" use="string(../parents/item/@handle)"/>
<xsl:key name="kChildren" match="tag" use="../parents/item/@handle"/>

<xsl:template match="tags" name="buildChildrenList">
    
    <xsl:variable name="vChildren" select="key('kChildren', string(@handle))"/>

    <xsl:if test="$vChildren">
        <ul>
            <xsl:apply-templates select="$vChildren"/>
        </ul>
    </xsl:if>
        
</xsl:template>

<xsl:template match="tag">

    <li>
        <a href="{$root}/{@handle}/">
            <xsl:value-of select="."/>
        </a>
        <xsl:call-template name="buildChildrenList"/>
    </li>

</xsl:template>



</xsl:stylesheet>