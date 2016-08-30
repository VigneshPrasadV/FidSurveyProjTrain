<HTML>
<HEAD>
<LINK href="../style/sms.css" rel=stylesheet>
<SCRIPT LANGUAGE="JavaScript" src='../js/sms.js'></SCRIPT>
<TITLE>Survey Management System - Moderator</TITLE>
</HEAD>

<BODY>
<FORM name='Main' action='http://localhost:8080/SurveyProj/SMSResEdit' method='GET'>
<TABLE cellspacing=0 cellpadding=0 border=0 width='100%'>
<TR height='50'>
	<TD align='left'>
		<TABLE cellspacing=0 cellpadding=0 border=0 width='100%'>
		<TR>
			<TD width='100%' height='52' class='TopHeader' align="left" colspan='2'>&nbsp;Survey Management System&nbsp;</TD>
		</TR>
		<TR>
			<TD height='25' class='SubHeader' colspan='2' align="right">
				<TABLE cellspacing=0 cellpadding=0 border=0 width='100%'>
				<TR class='SubHeader'>
					<TD align='left' width='50%'>&nbsp;&nbsp;&nbsp;Welcome, Respondent</TD>
					<TD align='right' width='50%'>
						<TABLE cellspacing=5 cellpadding=0 border=0>
						<TR>
							<TD><A class="HdrLinks" href="SMSResSelect.htm">Respond to Survey</A></TD>
							<TD class="SubHeader" align='center'>|</TD>
							<TD><A class="HdrLinks" href="SMSResSelectOld.htm">View Old Surveys</A></TD>
							<TD class="SubHeader" align='center'>|</TD>
							<!--TD><A class="HdrLinks" href="SMSEditUserRsp.htm">Edit My Profile</A></TD>
							<TD class="SubHeader" align='center'>|</TD-->
							<TD><A class="HdrLinks" href="javascript:fnLogout();">Logout</A></TD>
						</TR>
						</TABLE>
					</TD>
				</TR>
				</TABLE>
			</TD>
		</TR>
		</TABLE>
	</TD>
</TR>
<TR>
	<TD align='center'>
		<TABLE width='50%' cellspacing=5 cellpadding=5 border=0>
		<TR height='20'>
			<TD colspan='3'></TD>
		</TR>
		<TR height='30'>
			<TD colspan='3' class='SubHdgWithBorder' align='center'>Respond to Survey</TD>
		</TR>
		<TR>
			<TD colspan='3' class='RightText' align='center'>
				<DIV align='left'>
				Following is the list of surveys waiting for your valuable response. Select the survey and press 'GO' button to respond to it. 
				</DIV>
				<BR>
				<NOBR>
				<SELECT style='width:400' class="RightInputArea" name="SurveyName">
					<OPTION>Quality Awareness - 15/Jan/2006 10:00 AM
					<OPTION>Cafeteria and Food - 15/Jan/2006 03:30 PM
				</SELECT>
				&nbsp;
				<INPUT type="submit" value="GO" class="GButton" style="WIDTH: 30px;  HEIGHT: 19px" >&nbsp;
				</NOBR>
				<HR class='SubHdgWithBorder'>
			</TD>
		</TR>
		<TR>
			<TD colspan='3'></TD>
		</TR>
		</TABLE>
	</TD>
</TR>
<TR>
	<TD></TD>
</TR>
</TABLE>
</FORM>
</BODY>
</HTML>
