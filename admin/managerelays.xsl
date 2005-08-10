<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0" >
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icerelaystats" >
<html>
<head>
<title>Icecast Streaming Media Server</title>
<link rel="stylesheet" type="text/css" href="/style.css" />
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
<img align="left" src="/images/icecast.png" /><h2><center>Icecast2 Admin</center></h2>
<br />

<div class="roundcont">
<div class="roundtop">
<img src="/images/corner_topleft.jpg" class="corner" style="display: none" />
</div>
	<table border="0" cellpadding="1" cellspacing="3">
	<tr>        
	    <td align="center">
	        <a class="nav" href="stats.xsl">Admin Home</a> |
		    <a class="nav" href="listmounts.xsl">List Mountpoints</a> | 
        	<a class="nav" href="moveclients.xsl">Move Listeners</a> | 
            <a class="nav" href="managerelays.xsl">Manage Relays</a> |
        	<a class="nav" href="/status.xsl">Index</a>
	    </td></tr>
	</table>
<div class="roundbottom">
<img src="/images/corner_bottomleft.jpg" class="corner" style="display: none" />
</div>
</div>
<br />
<br />


<h1>Relay Management</h1>
<div class="roundcont">
<div class="roundtop">
<img src="/images/corner_topleft.jpg" class="corner" style="display: none" />
</div>
<div class="newscontent">
<xsl:for-each select="relay">
<h3>
<xsl:value-of select="localmount" />
<xsl:choose>
<xsl:when test = "enable!='0'">
    (<a href="managerelays.xsl?relay={localmount}&amp;enable=0">click to disable</a>)
</xsl:when>
<xsl:otherwise>
    (<a href="managerelays.xsl?relay={localmount}&amp;enable=1">click to enable</a>)
</xsl:otherwise>
</xsl:choose>
</h3>
<table border="0" cellpadding="4">
    <tr> <td>server</td> <td class="streamdata"> <xsl:value-of select="server" /></td> </tr>
    <tr> <td>port</td> <td class="streamdata"> <xsl:value-of select="port" /></td> </tr>
    <tr> <td>mountpoint</td> <td class="streamdata"> <xsl:value-of select="mount" /></td> </tr>
    <tr> <td>on demand</td> <td class="streamdata"> <xsl:value-of select="on_demand" /></td> </tr>
</table>
<br />
<br></br>
</xsl:for-each>
<xsl:text disable-output-escaping="yes">&amp;</xsl:text>nbsp;
</div>
<div class="roundbottom">
<img src="/images/corner_bottomleft.jpg" class="corner" style="display: none" />
</div>
</div>
<div class="poster">Support icecast development at <a class="nav" href="http://www.icecast.org">www.icecast.org</a></div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
