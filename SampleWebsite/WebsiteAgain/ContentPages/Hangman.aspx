<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/WebFormMasterPage.Master" AutoEventWireup="true" CodeBehind="Hangman.aspx.cs" Inherits="WebsiteAgain.ContentPages.Hangman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <h2>Welcome to Hangman!</h2>

    <h3>The Rules: </h3>

    <p>You will see a blocked out word. Guess what letter goes in the word. On a correct guess, all instances of that letter will be revealed. On an incorrect guess, ya suck.</p>
    <p>Be careful though. You only get 5 wrong guesses. Guess wrong a 6th time and you'll lose.</p>


    <h3>The Word: </h3>

    <div id="centered">

        <asp:Label ClientIDMode="static" runat="server" ID="SacredWord"></asp:Label>

        <br/>

        <asp:Label ClientIDMode="static" runat="server" ID="WrongCount"></asp:Label>

    </div>

    <asp:HiddenField ID="secret" runat="server"/>

    <asp:HiddenField ID="secretNum" runat="server"/>

    <asp:HiddenField ID="iHateSecrets" runat="server"/>

    <br />

    <div id="keyboard">

        <asp:Button runat="server" CommandName="work" ID="q" Text="Q" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="w" Text="W" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="e" Text="E" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="r" Text="R" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="t" Text="T" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="y" Text="Y" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="u" Text="U" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="i" Text="I" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="o" Text="O" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="p" Text="P" OnClick="Guess"></asp:Button>
        <br />
        <asp:Button runat="server" CommandName="work" ID="a" Text="A" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="s" Text="S" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="d" Text="D" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="f" Text="F" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="g" Text="G" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="h" Text="H" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="j" Text="J" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="k" Text="K" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="l" Text="L" OnClick="Guess"></asp:Button>
        <br />
        <asp:Button runat="server" CommandName="work" ID="z" Text="Z" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="x" Text="X" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="c" Text="C" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="v" Text="V" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="b" Text="B" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="n" Text="N" OnClick="Guess"></asp:Button>
        <asp:Button runat="server" CommandName="work" ID="m" Text="M" OnClick="Guess"></asp:Button>

        <br/><br/>

        <asp:button runat="server" ID="resetButton" onclick="Again" Enabled="false" Text ="Reset"></asp:button>
        
        <br/><br/>

        <img runat="server" id="failed" src="../Images/start.png"/>

    </div>
</asp:Content>
