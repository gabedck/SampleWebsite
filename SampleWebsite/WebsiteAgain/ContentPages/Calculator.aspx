<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/WebFormMasterPage.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="WebsiteAgain.ContentPages.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
<form>
    <div id="Calculator">

    <h2>
        Calculator
    </h2>

    <table>
        
        <tr>
            <td class="td1">
                <label for="FNum"> First Number: </label>
            </td>

            <td class="td2">
                <asp:TextBox ID="FNum" runat="server"/>
            </td>
            <td class="td3">
                <asp:RequiredFieldValidator 
                    Font-Size="Larger"
                    ForeColor="Red"
                    id="FirstNumberValidator"
                    ControlToValidate="FNum"
                    Text="*"
                    Display="Static"
                    InitialValue="" Width="100%"
                    runat="server">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td class="td1">
                <label for="SNum"> Second Number: </label>
            </td>

            <td class="td2">
                <asp:TextBox ID="SNum" runat="server"/>
            </td>
            <td class="td3">
                <asp:RequiredFieldValidator
                    Font-Size="Larger"
                    ForeColor="Red"
                    id="SecondNumberValidator"
                    ControlToValidate="SNum"
                    Text="*"
                    Display="Static"
                    InititalValue="" Width="100%"
                    runat="server">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td class="td1">
                <label for="Operators">Operators: </label>
            </td>

            <td class="td2"> 
                <asp:RadioButtonList ID="Operators" runat="server">
                    <asp:ListItem>Addition (+)</asp:ListItem>
                    <asp:ListItem>Subtraction (-)</asp:ListItem>
                    <asp:ListItem>Multiplication (*)</asp:ListItem>
                    <asp:ListItem>Division (/)</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="td3">
                <asp:RequiredFieldValidator
                    Font-Size="Larger"
                    ForeColor="Red"
                    ID="RequiredFieldValidator1"
                    ControlToValidate="Operators"
                    Text="*"
                    Display="Static"
                    InititalValue="" Width="100%"
                    runat="server">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td class="tdLone" colspan="3"> 
                <label for="Output">Output: </label>
                <output name="Output"> </output>
            </td>
        </tr>

        <tr>
            <td class="tdLone" colspan="3">
                <button type="button" onclick="
                    if (Operators.SelectedIndex == 0)
                        {
                            Output.value = FNum.Text + '+' + SNum.Text + '=' + (parseFloat(FNum.Text) + parseFloat(SNum.Text)).toFixed(2)
                        }
                    else if (Operators.SelectedIndex == 1)
                        {
                            Output.value = FNum.Text + '-' + SNum.Text + '=' + (parseFloat(FNum.Text) - parseFloat(SNum.Text)).toFixed(2)
                        }
                    else if (Operators.SelectedIndex == 2)
                        {
                            Output.value = FNum.Text + '*' + SNum.Text + '=' + (parseFloat(FNum.Text) * parseFloat(SNum.Text)).toFixed(2)
                        }
                    else if (Operators.SelectedIndex == 3)
                        {
                            Output.value = FNum.Text + '/' + SNum.Text + '=' + (parseFloat(FNum.Text) / parseFloat(SNum.Text)).toFixed(2)
                        }"
                    >Submit</button>

                <button type="reset">Clear</button>
            </td>
        </tr>

    </table>

        <asp:ValidationSummary  ID="ValidationSummary1" runat="server" />

    </div>
<form/>
</asp:Content>
