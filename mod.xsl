<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.product-patches">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-product-patches" ox-mod="product-patches">
            <ul>
            	<xsl:for-each select="data/ecom-products/i">
            		<xsl:variable name="img" select="media/i[type = 'image']/src" />
            		<xsl:variable name="ratio" select="substring-before(substring-after($img,'-'),'.')"/>
            		<xsl:variable name="pictype">
            			<xsl:choose>
            				<xsl:when test="$ratio &lt; 1000">landscape</xsl:when>
            				<xsl:otherwise></xsl:otherwise>
            			</xsl:choose>
            		</xsl:variable>
            		
            		<li class="{$pictype}">
            			<img src="http://a.oxm1.cc/img/blank.png" ratio="{$ratio}" style="background-image:url({$img})" class="mainpic"/>
            			<div class="textbox">
	            			<h3 class="title">
	            				<xsl:value-of select="title"/>
	            			</h3>
	            			<div class="brief">
	            				<a href="{LINK/detail}">
		            				<xsl:value-of select="brief"/>
		            			</a>
	            			</div>
	            		</div>
            		</li>
            	</xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
