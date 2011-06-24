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
<xsl:output 
    method="xml"
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" 
    />



<xsl:include href="event.xsl"/>
<xsl:include href="google-map.xsl"/>
<xsl:include href="location.xsl"/>
<xsl:include href="misc.xsl"/>
<xsl:include href="nav.xsl"/>
<xsl:include href="page-title.xsl"/>
<xsl:include href="scripture.xsl"/>
<xsl:include href="tumblr.xsl"/>
<xsl:include href="ustream.xsl"/>



<xsl:param name="tumblr"/>
<xsl:param name="tag"/>



<xsl:template match="/">

	<html>
		<head>
		
			<title>
                <xsl:call-template name="page-title"/>
            </title>
		
			<link rel="icon" type="images/png" href="{$workspace}/images/icons/bookmark.png" />
			<link href="http://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" type="text/css" />
			<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/common.css" />	
		
            

            
		</head>
	
		<body>
		
			<div class="container">  

            	<div class="header">
            	   
            	   <div class="modules">
            	   		<div class="module search">
            	   		  	<form method="post" action="" autocomplete="on">
            	   		      	<input name="gsearch" type="text" class="text" placeholder="Search the site" />
            	   		      	<input name="gsearch" type="submit" value="Search" />
            	   		  	</form>
            	   		 </div>
            	   		 
                	   <xsl:call-template name="ustream-live" />
                	   
                	   <div class="module morning_worship">
                	       <p>7:00 <span>AM</span></p>
                	   </div>
                	   
                	   <div class="module">
                	       <p><strong>Meeting:</strong> inside</p>
                	   </div>
            	   </div>
            	   <div class="topnav">
		            	   <h1>
		            	      <a href="{$root}">
		            	          <xsl:value-of select="$website-name" />
		            	      </a>
		            	   </h1>
		            	   
		            	   	<div class="nav level-1">
		                      <xsl:call-template name="nav-level-1" />
		                  </div>
                  </div>
                  <div class="masthead">
		                  <h2>
		                      <a href="#">
		                      	<xsl:call-template name="tag-formal" />
		                      </a>
		                  </h2>
		                  <div class="nav level-2">
		                      <xsl:call-template name="nav-level-2" />
		                  </div>
                  </div>
        
            	</div>
            	
				<xsl:apply-templates />
	           
            	<div class="footer">

                	<p>
                    	<xsl:text>©</xsl:text>
                    	<xsl:value-of select="$this-year" />
                    	<xsl:text>.&#160;</xsl:text>
                    	<xsl:value-of select="$website-name" />
                    	<xsl:text>.&#160;</xsl:text>
                    	<xsl:text>All rights reserved.</xsl:text>
                    </p>
                
                </div>

			</div>
	
            <xsl:if test="$current-page = 'tumblr'">
            
            	<script type="text/javascript" src="http://assets.tumblr.com/javascript/tumblelog.js?488"></script>
            
            </xsl:if>
			
			
			<!-- Future cache implementation of http://headjs.com/ -->
			
			<script type="text/javascript" src="{$workspace}/js/jquery-1.5.1.min.js"></script>
			
			<!-- <script type="text/javascript" src="{$workspace}/js/jquery-ui-1.8.11.full.min.js"></script> -->
            
            <script type="text/javascript" src="{$workspace}/js/common.js"></script>
            
            <!-- <script src="http://bible.logos.com/jsapi/referencetagging.js" type="text/javascript"> </script> 
            <script type="text/javascript">
                 Logos.ReferenceTagging.lbsBibleVersion = "NKJV";
                 Logos.ReferenceTagging.lbsLinksOpenNewWindow = true;
                 Logos.ReferenceTagging.lbsLogosLinkIcon = "dark";
                 Logos.ReferenceTagging.lbsNoSearchTagNames = [ "h1", "h2", "h3" ];
                 Logos.ReferenceTagging.lbsTargetSite = "biblia";
                 Logos.ReferenceTagging.lbsCssOverride = true;
                 Logos.ReferenceTagging.tag();
            </script>
 -->            
		</body>
	
	</html>

</xsl:template>



</xsl:stylesheet>