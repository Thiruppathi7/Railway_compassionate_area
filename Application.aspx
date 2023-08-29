<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Application.aspx.cs" Inherits="Application" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
 function validate() 
{
 var pfno = document.getElementById('<%=DropDownList6.ClientID %>').value;
  var ename = document.getElementById('<%= TextBox12.ClientID %>').value;
  var death=document.getElementById('<%= TextBox1.ClientID %>').value;
  var appoint=document.getElementById('<%= TextBox13.ClientID %>').value;
  var  job=document.getElementById('<%= DropDownList1.ClientID %>').value;
  var  comm=document.getElementById('<%= DropDownList8.ClientID %>').value;
  var aname=document.getElementById('<%= name.ClientID %>').value;
  var relat=document.getElementById('<%= DropDownList2.ClientID %>').value;
 var dob=document.getElementById('<%= TextBox2.ClientID %>').value;
  var edu=document.getElementById('<%= TextBox10.ClientID %>').value;
  var fmember=document.getElementById('<%= DropDownList3.ClientID %>').value;
 var pension=document.getElementById('<%= TextBox6.ClientID %>').value;
 var dcrg=document.getElementById('<%= TextBox5.ClientID %>').value;
   var gpf=document.getElementById('<%= TextBox7.ClientID %>').value;
    var lic=document.getElementById('<%= TextBox3.ClientID %>').value;
    var eol=document.getElementById('<%= TextBox4.ClientID %>').value;
  
 var fpension=document.getElementById('<%= DropDownList4.ClientID %>').value;
var immove=document.getElementById('<%= DropDownList5.ClientID %>').value;
 var act=document.getElementById('<%= TextBox9.ClientID %>').value;
   var move=document.getElementById('<%= TextBox14.ClientID %>').value;
    var aincome=document.getElementById('<%= TextBox15.ClientID %>').value;
    var fmm=document.getElementById('<%= TextBox16.ClientID %>').value;
 var loan= document.getElementById('<%= DropDownList9.ClientID %>').value;
  var candi=document.getElementById('<%= TextBox18.ClientID %>').value;
  var post=document.getElementById('<%= TextBox19.ClientID %>').value;
  var wite=document.getElementById('<%= TextBox20.ClientID %>').value;
  var addr=document.getElementById('<%= TextBox21.ClientID %>').value;
  var vofficer=document.getElementById('<%= TextBox22.ClientID %>').value;
                 
                 
                                   
          
 if (pfno == "--Select--") {
        alert("Select pfno");
        return false;
    }
       if (ename == "") {
        alert("Enter The ename");
        return false;
    }
    if (death == "") {
        alert("Select The Death Date");
        return false;
    }
    if (appoint== "") {
        alert("Select the Appointment Date");
        return false;
    }
    if (job == "--Select--") {
        alert("Select Job");
        return false;
    }
     if (comm== "--Select--") {
        alert("Select Community");
        return false;
    }
      if (aname== "") {
        alert("Enter The Name Of Candidate");
        return false;
    }
    if (relat== "--Select--") {
        alert("Select Your Relation");
        return false;
    }
      if (dob== "") {
        alert("Select Date Of Birth");
        return false;
    }
    
      if (edu== "") {
        alert("Enter The Educational Qualification");
        return false;
    }
     if (fmember == "--Select--") {
        alert("Select Family Member");
        return false;
    }
    if (pension== "") {
        alert("Enter The Pension Amount");
        return false;
    }
    if (dcrg== "") {
        alert("Enter The DCRG");
        return false;
    }
    if (pension== "") {
        alert("Enter The Pension Amount");
        return false;
    }
    if (gpf== "") {
        alert("Enter The GPF/Balance");
        return false;
    }
    if (lic== "") {
        alert("Enter The Life Insurance");
        return false;
    }
    if (eol== "") {
        alert("Enter The Enchancement Of Leave");
        return false;
    }
     if (fpension == "--Select--") {
        alert("Select Family Pension");
        return false;
    }
     if (immove== "--Select--") {
        alert("Select Immoval Property");
        return false;
    }
    if (act== "") {
        alert("Enter The ACT");
        return false;
    }
    if (move== "") {
        alert("Enter The Movable Property");
        return false;
    }
    if (aincome== "") {
        alert("Enter The annual Income from other Source");
        return false;
    }
    if (fmm== "") {
        alert("Enter The Family Members/Marriage Status");
        return false;
    }
     if (loan== "--Select--") {
        alert("Select Loans Amount taken Proof ");
        return false;
    }
    if (candi== "") {
        alert("Enter The Candidate Name");
        return false;
    }
    if (post== "") {
        alert("Enter the Post for which employment proposed Groub c/Groub D");
        return false;
    }
    if (wite== "") {
        alert("Enter The Witeness of Employee");
              return false;
    }
    if (addr== "") {
        alert("Enter The Name And Address");
        return false;
    }
    if (vofficer== "") {
        alert("Enter The Verfication Officer Name");
        return false;
    }
  
    }   
</script>

  <div class="container"  >
  <table id="calenderTable">
        <tbody id="calenderTableHead">
          <tr>
            <td colspan="4" align="center" class="style37">
	          <select onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>            </td>
            <td colspan="2" align="center" class="style37">
			    <select onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));" id="selectYear">
				</select>			</td>
            <td align="center" class="style37">
			    <a href="#" onClick="closeCalender();"><font size="+1">X</font></a>			</td>
		  </tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td class="style37">Sun</td><td class="style37">Mon</td><td class="style37">Tue</td><td class="style37">Wed</td><td class="style37">Thu</td><td class="style37">Fri</td><td class="style37">Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
  
	<div class="row">
         <center>  <div class="col-sm-10 col-lg-offset-1 ">
           <center> <legend>
               <br />
               Application</legend></center>
        </div>
        <!-- panel preview -->
        <div class="col-sm-5 col-lg-offset-1">
      
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Pfno</label>
                        <div class="col-sm-7">
                                 <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" 
                                     onselectedindexchanged="DropDownList6_SelectedIndexChanged" 
                                     AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-5 control-label">Employee Name</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox12" class="form-control" runat="server" ReadOnly></asp:TextBox>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="amount" class="col-sm-5 control-label">Designation</label>
                        <div class="col-sm-7">
                            <asp:DropDownList ID="DropDownList7" class="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-5 control-label">Date of Dead</label>
                        <div class="col-sm-6">
                           <asp:TextBox ID="TextBox1" class="form-control"  runat="server"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="dod" runat="server" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div><div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox1.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-5 control-label">Date of Appointment</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox13" class="form-control"  runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="doa" runat="server" Display="Dynamic" ControlToValidate="TextBox13" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div><div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox13.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>   
                  <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Permenant or Temporary</label>
                        <div class="col-sm-7">
                         
                           <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                               <asp:ListItem>--Select--</asp:ListItem>
                               <asp:ListItem>Permenant</asp:ListItem>
                               <asp:ListItem>Temperary</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Whether Belongs to Sc/ST/OBC</label>
                        <div class="col-sm-7">
                         
                          <asp:DropDownList ID="DropDownList8" class="form-control" runat="server">
                                 <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>ST</asp:ListItem>
                        <asp:ListItem>OC</asp:ListItem>
                        <asp:ListItem>OBC</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Name of Candidate for Appointment</label>
                        <div class="col-sm-7">
                            <asp:TextBox id="name" class="form-control" name="date"  runat="server" ontextchanged="date_TextChanged"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="candname" ControlToValidate="name" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">His/Her RelationShip in Govern. 
                            Servent</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                      <asp:ListItem>--Select--</asp:ListItem>
                               <asp:ListItem>Yes</asp:ListItem>
                               <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Date of Brith Applicant</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="doba" runat="server" Display="Dynamic" ControlToValidate="TextBox2" ErrorMessage="Please Select Date Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div><div class="col-sm-1"><a href="#" onClick="setYears(1947, 2020); showCalender(this, '<%=TextBox2.ClientID %>');">
              <img src="images/calendar.gif"></a></div>
                    </div>
                     <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Educational Qualification</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox10" class="form-control" runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="edu" ControlToValidate="TextBox10" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-5 control-label"> Family Member has Been 
                        appointed on Compassionate Grounds</label>
                        <div class="col-sm-7">
                           
                            <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                      <asp:ListItem>--Select--</asp:ListItem>
                               <asp:ListItem>Yes</asp:ListItem>
                               <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList> 
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="amount" class="col-sm-5 control-label">Family Pension Amount</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox6" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="pens" runat="server" Display="Dynamic" ControlToValidate="TextBox6" ErrorMessage="Please Enter Numerics Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="status" class="col-sm-5 control-label">DCRG/Serverance amount</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="amoun" runat="server" Display="Dynamic" ControlToValidate="TextBox5" ErrorMessage="Please Enter Numerics Only" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="date" class="col-sm-5 control-label">Gpf Balance</label>
                        <div class="col-sm-7">
                            <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="gpf" runat="server" Display="Dynamic" ControlToValidate="TextBox7" ErrorMessage="Please Enter Numerics Only." ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator> 
							
                        </div>
                    </div>   
                 
                </div>
            </div>  
                      
        </div>
        
          <div class="col-sm-5">
  
            <div >
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Life Insurance</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox3" class="form-control"  runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator ID="life" ControlToValidate="TextBox3" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Encashment of Leave</label>
                        <div class="col-sm-7">
                         
                            <asp:TextBox ID="TextBox4" class="form-control"  runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="encash" ControlToValidate="TextBox4" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Family Pension</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                      <asp:ListItem>--Select--</asp:ListItem>
                               <asp:ListItem>Yes</asp:ListItem>
                               <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                        <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Immovable Property</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList5" class="form-control" runat="server">
                                      <asp:ListItem>--Select--</asp:ListItem>
                               <asp:ListItem>Yes</asp:ListItem>
                               <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Agricul land size/Land/House</label>
                        <div class="col-sm-7">
                         
                           <asp:TextBox ID="TextBox9" class="form-control"  runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="agri" ControlToValidate="TextBox9" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Movable Property</label>
                        <div class="col-sm-7">
                         
                           <asp:TextBox ID="TextBox14" class="form-control"  runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="move" ControlToValidate="TextBox14" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Annual Income from Other 
                        Source</label>
                        <div class="col-sm-7">
                         
                         <asp:TextBox ID="TextBox15" class="form-control"  runat="server"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="annual" ControlToValidate="TextBox15" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Family Members/Marriage 
                        Status</label>
                        <div class="col-sm-7">

<asp:TextBox ID="TextBox16" class="form-control"  runat="server"></asp:TextBox>
 <asp:RegularExpressionValidator ID="famil" ControlToValidate="TextBox16" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                        
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Loans Amount taken Proof etc</label>
                        <div class="col-sm-7">
                          <asp:DropDownList ID="DropDownList9" class="form-control" runat="server">
                                    <asp:ListItem>--Select--</asp:ListItem>
                               <asp:ListItem>Yes</asp:ListItem>
                               <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Name of the Candidate</label>
                        <div class="col-sm-7">
                        
                           <asp:TextBox ID="TextBox18" class="form-control"  runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="ncand" ControlToValidate="TextBox18" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">His/Her Relationhip With 
                        Govt Servant</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList13" class="form-control" runat="server">
                                      <asp:ListItem>--Select--</asp:ListItem>
                               <asp:ListItem>Yes</asp:ListItem>
                               <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Post for which employment 
                        proposed Groub c/Groub D</label>
                        <div class="col-sm-7">

                            <asp:TextBox ID="TextBox19" class="form-control"  runat="server"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="post" ControlToValidate="TextBox19" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Witeness</label>
                        <div class="col-sm-7">
                         
                           <asp:TextBox ID="TextBox20" class="form-control"  runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="wite" ControlToValidate="TextBox20" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Name And Address</label>
                        <div class="col-sm-7">
                         
                           <asp:TextBox ID="TextBox21" class="form-control"  runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="naddr" ControlToValidate="TextBox21" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Verfication Officer</label>
                        <div class="col-sm-7">
                         
                           <asp:TextBox ID="TextBox22" class="form-control"  runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="voffic" ControlToValidate="TextBox22" Display="Dynamic" runat="server" ValidationExpression="^[A-Za-z]*$" ErrorMessage="Please Enter Characters Only."></asp:RegularExpressionValidator>

                        </div>
                    </div>
                     <div class="form-group">
                        <label for="concept" class="col-sm-5 control-label">Search Application</label>
                        <div class="col-sm-7">
                         
                            <asp:DropDownList ID="DropDownList10" class="form-control" runat="server" 
                                onselectedindexchanged="DropDownList10_SelectedIndexChanged1" 
                                AutoPostBack="True" Visible="true">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
         </div>
  
    <div class="form-w3agile">
       <center> <table>
            <tr>
                <td style="width: 100px; height: 28px;" align="left">
                    <asp:Button ID="Button1" runat="server" Text="Save" Font-Names="Cambria" 
                        Font-Size="Medium" Width="143px"  TabIndex="23"  
                        OnClientClick="return validate();" onclick="Button1_Click"  /></td>
                <td style="width: 100px; height: 28px;"><asp:Button ID="Button2" runat="server" 
                        Text="Delete" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="24"   onClientClick="return OpenPopup()" 
                        onclick="Button2_Click"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button3" runat="server" 
                        Text="Modify" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="25" onclick="Button3_Click"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button4" runat="server" 
                        Text="View" Font-Names="Cambria" Font-Size="Medium" Width="143px"  
                        TabIndex="26" onclick="Button4_Click"  /></td>
                <td style="width: 100px; height: 28px;">
                    <asp:Button ID="Button5" runat="server" 
                        Text="Search" Font-Names="Cambria" Font-Size="Medium"  Width="143px" 
                        TabIndex="27" onclick="Button5_Click"  />
                    <br />
                </td>
                
            </tr>
        </table></center>
    </div>
    <br />
    <br />
    </div>
</asp:Content>