<%dim d
d=cstr(FormatDateTime (now(),2))
Set RB=Conn.Execute("SELECT * FROM tb_dicabruxa WHERE (((tb_dicabruxa.DBR_data)=DateValue('"&d&"')));")%>
<script src="scripts/functions.js" type="text/javascript"></script>
<link rel="stylesheet" href="scripts/stylesheet.css">
<style type="text/css">
	<!--
	.style1 {font-size: 6pt}
	.style4 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 8pt;
	}
	.style5 {font-size: 8}
	-->
</style>
<div align="center">
	<table width="112" border="0" align="center"  cellpadding="0"  cellspacing="0">
		<tr>
			<td height="4"></td>
		</tr>
	</table>
		<table width="112" border="0" align="center"  cellpadding="0"  cellspacing="0">
			<tr>
				<td height="11" background="imagens/canto02-.gif" ></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" ><div align="center" class="style4">Dicas di&aacute;rias do Mercado da Bruxa</div></td>
			</tr>
			<tr>
				<td background="imagens/mercbruxafundo.gif" bgcolor="#FF9900" height"175">	      
					<marquee id="scroller" scrollamount="3" direction="up" height"175" onClick="scrollstop()" onMouseOver="scrollOver()" onMouseOut="scrollOut()" style="width:112px; height:175px">
							<% If RB.EOF Then %>
								<% Response.Write("Sem Dica") %>
							<% Else %>
								<table border="0" cellpadding="0"  cellspacing="1" bordercolor="#FFBA53">
									<tr>
										<td bgcolor="#DDDDDD" height="3"></td>
									</tr>
									<tr>
										<td height="18" class="style4">
										:. <%= RB("DBR_data") %> <br>
											<hr align="left" size="1" color="#FFFFFF" width="100%">
											<strong><%= RB("DBR_titulo") %></strong> 
										</td>
									</tr>
									<tr>
										<td valign="top" class="content">
											<div align="center" class="style4"><%= CStr(RB("DBR_texto")) %></div>
										</td>
									</tr>
								</table>
							<% End If %>
							<table border="0" cellpadding="0"  cellspacing="1">
								<tr>
									<td bgcolor="#DDDDDD" height="3"></td>
								</tr>
								<tr>
									<td height="18" class="style4">:. Patroc&iacute;nio </td>
								</tr>
								<tr>
									<td class="style4" valign="top"><div align="center"><font color="#FFFFFF"><img src="imagens/baner/logo_mercbruxa2.gif" width="108" height="60" /><br>
										Ven&acirc;ncio Aires 1573 fone 30255243</font><br>		    
										</div>
									</td>
								</tr>
							</table>
					</marquee>
				</td>
			</tr>
		</table>
		<table border="0" cellpadding="0" cellspacing="0"><tr><td height="2">
			</td></tr>
		</table>
		<table width="112" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td width="20" height="11" background="imagens/canto02-.gif"></td>
			</tr>
		</table>
</div>
