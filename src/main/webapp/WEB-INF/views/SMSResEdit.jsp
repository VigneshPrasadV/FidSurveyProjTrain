<HTML>
<HEAD>
<LINK href="/style/sms.css" rel=stylesheet>
<SCRIPT LANGUAGE="JavaScript" src='/js/sms.js'></SCRIPT>
<TITLE>Survey Management System - Moderator</TITLE>
</HEAD>

<BODY>
<FORM name='Main' action='' method='GET'>
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
		<TABLE width='50%' cellspacing=0 cellpadding=5 border=0>
		<TR height='20'>
			<TD colspan='3'></TD>
		</TR>
		<TR height='30'>
			<TD colspan='3' class='SubHdgWithBorder' align='center'>Respond to Survey</TD>
		</TR>
		<TR>
			<TD class="LeftLabels">Survey Name</TD>
			<TD></TD>
			<TD class="ValLabels">Quality Awareness</TD>
		</TR>
		<TR>
			<TD class="LeftLabels">Description</TD>
			<TD></TD>
			<TD class="ValLabels">This is a survey to check the Quality awareness of employees.</TD>
		</TR>
		<TR>
			<TD class="LeftLabels">Distributed On</TD>
			<TD></TD>
			<TD class="ValLabels">15/Jan/2006 10:00 AM</TD>
		</TR>
		<TR>
			<TD colspan='3'>
				<TABLE cellspacing=0 cellpadding=0 border=0 width='100%'>
				<TR height=1 class='LeftLabels'>
					<TD width='10%'></TD>
					<TD width='90%'></TD>
				</TR>
				<TR height=1 class='TopHeader'><TD colspan='2'></TD></TR>
				<TR height=1 class='LeftLabels'><TD colspan='2'>Question 1</TD></TR>
				<TR>
					<TD colspan='2'><SPAN class='Labels'>This is  first sample question</SPAN><DIV class='RightText'>Give your reponse below (Max 4000 characters)</DIV><BR>
					</TD>
				</TR>
				<TR>
					<TD></TD>
					<TD>
						<TEXTAREA name="txtAns1" rows='3' style='width:450px' class="RightInputArea"></TEXTAREA>
					</TD>
				<TR>
				<TR height=5><TD colspan='2'></TD></TR>
				<TR height=1 class='TopHeader'><TD colspan='2'></TD></TR>
				<TR height=1 class='LeftLabels'><TD colspan='2'>Question 2</TD></TR>
				<TR>
					<TD colspan='2'><SPAN class='Labels'>This is  another sample question</SPAN><DIV class='RightText'>Select your choice(s) from the list below</DIV><BR>
					</TD>
				</TR>
				<TR>
					<TD align='right'><INPUT type='checkbox' name="chkQ2C1"></TD>
					<TD class='RightText'>Choice 1 for the sample question</TEXTAREA>
					</TD>
				<TR>
				<TR>
					<TD align='right'><INPUT type='checkbox' name="chkQ2C2"></TD>
					<TD class='RightText'>Choice 2 for the sample question</TEXTAREA>
					</TD>
				<TR>
				<TR>
					<TD align='right'><INPUT type='checkbox' name="chkQ2C3"></TD>
					<TD class='RightText'>Choice 3 for the sample question</TEXTAREA>
					</TD>
				<TR>
				<TR height=5><TD colspan='2'></TD></TR>
				<TR height=1 class='TopHeader'><TD colspan='2'></TD></TR>
				<TR height=1 class='LeftLabels'><TD colspan='2'>Question 3</TD></TR>
				<TR>
					<TD colspan='2'><SPAN class='Labels'>This is  third sample question</SPAN><DIV class='RightText'>Select your choice from the list below</DIV><BR>
					</TD>
				</TR>
				<TR>
					<TD align='right'><INPUT type='radio' name="chkQ3C"></TD>
					<TD class='RightText'>Choice 1 for the sample question</TEXTAREA>
					</TD>
				<TR>
				<TR>
					<TD align='right'><INPUT type='radio' name="chkQ3C"></TD>
					<TD class='RightText'>Choice 2 for the sample question</TEXTAREA>
					</TD>
				<TR>
				<TR>
					<TD align='right'><INPUT type='radio' name="chkQ3C"></TD>
					<TD class='RightText'>Choice 3 for the sample question</TEXTAREA>
					</TD>
				<TR>
				<TR>
					<TD align='right'><INPUT type='radio' name="chkQ3C"></TD>
					<TD class='RightText'>Choice 4 for the sample question</TEXTAREA>
					</TD>
				<TR>
				</TABLE>
			</TD>
		</TR>
		<TR>
			<TD colspan='3' align='center'>
				<HR class='SubHdgWithBorder'>
				<INPUT type="submit" value="save" class="GButton" style="WIDTH: 80px;  HEIGHT: 19px" onsubmit="fnLoadPage('http://localhost:8080/SurveyProj/SMSResEdit/save?txtAns1='+txtAns1.value);">&nbsp;
				<INPUT type="submit" value="Submit" class="GButton" style="WIDTH:80px;  HEIGHT: 19px" onsubmit="fnLoadPage('http://localhost:8080/SurveyProj/SMSResEdit/submit?txtAns1='+txtAns1.value);">&nbsp;				
				<INPUT type="button" value="Cancel" class="GButton" style="WIDTH:80px;  HEIGHT: 19px" onclick="fnLoadPage('SMSResSelect.htm');">
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

