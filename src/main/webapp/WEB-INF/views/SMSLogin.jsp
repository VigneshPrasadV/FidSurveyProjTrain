<HTML>
<HEAD>
<TITLE>Survey Management System</TITLE>

<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<SCRIPT LANGUAGE="JavaScript" src='../js/sms.js'></SCRIPT>
<LINK href="../style/sms.css" rel=stylesheet>
<SCRIPT LANGUAGE="JavaScript">
<!--
function fnSubmit()
{
	document.Main.txtUserName.value = trim(document.Main.txtUserName.value);
    if (document.Main.txtUserName.value == 'Surveyor')
	{
		document.Main.action = "SMSSvyCreate.htm";
 	}
	else if (document.Main.txtUserName.value == 'respondent')
	{
		document.Main.action = "SMSResSelect.htm";
 	}
	else
	{
		document.Main.action = "SMSLoginInvalid.htm";
	}
	document.Main.submit();
}
//-->
</SCRIPT>
</HEAD>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">

<FORM name='Main' action='SMSSurvey.htm' method='POST'>
<INPUT type='hidden' name='control' value='LOGIN'>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 height=100%>
<TR>
<TD height='100%' valign='middle' align='center'>

	<TABLE cellspacing=0 cellpadding=0 border=0 width='400' height='151'>
	<TR >
		<TD width='68'  height='1'></TD>
		<TD width='2'   height='1'></TD>
		<TD width='127' height='1'></TD>
		<TD width='201' height='1'></TD>
		<TD width='2'   height='1'></TD>
	</TR>
	<TR >
		<TD width='197' height='72' colspan=3 rowspan=3 class='HdgWithBorder' align="center">Survey Management System</TD>
		<TD width='203' height='35' colspan=2></TD>
	</TR>
	<TR >
		<TD width='201' height='2' class="MainBorder"></TD>
		<TD width='2'   height='115' class="MainBorder" rowspan='4'></TD>
	</TR>
	<TR >
		<TD width='201' height='35' class = "RightText">&nbsp;Enter User Name, Password and <BR>&nbsp;Press Submit</TD>
	</TR>
	<TR >
		<TD width='68'  height='78' rowspan=2></TD>
		<TD width='2'   height='78' class="MainBorder" rowspan=2></TD>
		<TD width='328' height='76' colspan='2' valign='top'>
			<TABLE border=0 width='100%' cellspacing=0 cellpadding=0>
			<TR height='6'>
				<TD colspan='4' class = "RightText" valign='middle'></TD>
			</TR>
			<TR height='20'>
				<TD width='2%'></TD>
				<TD class = "RightTextBold" width='40%'>&nbsp;User Name</TD>
				<TD width='2%'></TD>
				<TD width='56%'><INPUT type='text' name="txtUserName" size=20 maxlength=10 class="RightInputArea"></TD>
			</TR>
			<TR height='20'>
				<TD></TD>
				<TD class = "RightTextBold">&nbsp;Password</TD>
				<TD></TD>
				<TD><INPUT type='password' name="txtPassword" size=20 maxlength=10 class="RightInputArea"></TD>
			</TR>
			<TR height='10'>
				<TD colspan='4' class = "RightText" valign='middle' align='center'></TD>
			</TR>
			<TR height='2'>
				<TD colspan='4' class="MainBorder" valign='middle'></TD>
			</TR>
			<TR height='24' class="ShadedBox" align='right'>
				<TD colspan='4' class = "RightText" valign='middle'><INPUT type="button" value="Submit" class="GButton" style="WIDTH: 60px;  HEIGHT: 19px" onclick="fnSubmit();">&nbsp;</TD>
			</TR>
			</TABLE>
		</TD>
	</TR>
		<TD width='97'  height='2' class="MainBorder"></TD>
		<TD width='201' height='2' class="MainBorder"></TD>
	</TABLE>
	<TABLE cellspacing=0 cellpadding=0 border=0 width='400'>
	<TR >
		<TD width='68'></TD>
		<TD width='332' class='Hint'><B>Hint:</B>&nbsp;Login using the id's Surveyor or  respondent</TD>
	</TR>
	<TABLE>
</TD>
</TR>
</TABLE>
</FORM>
</BODY>

</HTML>