// All screens
function fnLogout()
{
	document.Main.action = "SMSLogin.htm";
	document.Main.submit();
}

// Moderator select screen
function fnShowDetails()
{
	if (document.Main.cboUser.options.selectedIndex != 0)
	{
		document.Main.action = "SMSModUserDet.htm";
		document.Main.submit();
	}
}

// To load any page
function fnLoadPage(page)
{
	document.Main.action = page;
	document.Main.submit();
}

// For Survey - Add Qestions page
function fnChangeQs(val)
{
  if (val == 1)
  {
	 document.all.QType1.style.display = '';
	 document.all.QType2.style.display = 'none';
	 document.all.QType3.style.display = 'none';
	 document.all.QType4.style.display = 'none';
  }
  else if (val == 2)
  {
	 document.all.QType1.style.display = 'none';
	 document.all.QType2.style.display = '';
	 document.all.QType3.style.display = 'none';
	 document.all.QType4.style.display = 'none';
  }
  else if (val == 3)
  {
	 document.all.QType1.style.display = 'none';
	 document.all.QType2.style.display = 'none';
	 document.all.QType3.style.display = '';
	 document.all.QType4.style.display = 'none';
  }
  else if (val == 4)
  {
	 document.all.QType1.style.display = 'none';
	 document.all.QType2.style.display = 'none';
	 document.all.QType3.style.display = 'none';
	 document.all.QType4.style.display = '';
  }
}

// Generic

function move(FromBox, ToBox)
{
   if(FromBox.options.length == 0)
   {
		alert("List box is empty")
		return false
   }

	var isValueSelected;
	isValueSelected = FromBox.selectedIndex
	if (isValueSelected == -1)
	{
		alert("Please select a value")
		return false;
	}
	var perId;
	if(FromBox.selectedIndex >= 0)
	{
		for(i=0;i<FromBox.options.length;i++)
		{
			if(FromBox.options[i].selected == true)
			{
				var tempId = FromBox.options[i].id;
				var option = new Option(FromBox.options[i].text,FromBox.options[i].value);
				option.id = FromBox.options[i].id;
				option.text = FromBox.options[i].text;
				option.value = FromBox.options[i].value;


				for (var kk=0;kk<ToBox.options.length;kk++)
				{
					if (parseInt(tempId) < parseInt(ToBox.options[kk].id))
					{
						perId = kk;
						break;
					}

					if (parseInt(tempId) > ToBox.options[ToBox.options.length-1].id)
					{
						perId = ToBox.options.length;
						break;
					}
				}
				ToBox.add(option,perId);
			}
		}
				

		for(i=FromBox.options.length-1;i>=0;i--)
		{
			if(FromBox.options[i].selected)
			{
				FromBox.options.remove(i);
			}
		}
	}

}

// Generic

function moveAll(FromBox, ToBox)
{
	if(FromBox.options.length == 0)
	{
		alert("List box is empty")
	}
	else 
	{
		for(i=0;i<FromBox.options.length;i++)
		{
			FromBox.options[i].selected = true;
		}
		move(FromBox, ToBox);
	}
}

// Distribute Screen
function fnMoveAllRight()
{
	moveAll(document.Main.cboColOrig, document.Main.cboColSel);
}

// Distribute Screen
function fnMoveAllLeft()
{
	moveAll(document.Main.cboColSel, document.Main.cboColOrig);
}

// Distribute Screen
function fnMoveRight()
{
	move(document.Main.cboColOrig, document.Main.cboColSel);
}

// Distribute Screen
function fnMoveLeft()
{
	move(document.Main.cboColSel, document.Main.cboColOrig);
}

// trim
function trim(str)
{
   return str.replace(/^\s*|\s*$/g,"");
}