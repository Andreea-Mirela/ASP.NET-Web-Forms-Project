<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdaugaBrokerForm.aspx.cs" Inherits="Proiect.AdaugaBrokerForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .tabel {
            
            background-image: url("img2.jpg");
            padding-bottom: 20px;

            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            margin: auto;
        }
        .logo1 {
            font-family: Impact, Charcoal, sans-serif;
            font-size: 35px;
            letter-spacing: 2px;
            word-spacing: 2px;
            color: #B45F9C;
            font-weight: normal;
            text-decoration: none  solid rgb(68, 68, 68);
            font-style: normal;
            font-variant: small-caps;
            text-transform: none;
            font-weight: 700;
            text-align:center
        }
          .label {
            font-family: Impact, Charcoal, sans-serif;
            font-size: 20px;
            letter-spacing: 2px;
            word-spacing: 2px;
            color:  #6e3b5f;
            font-weight: normal;
            text-decoration: solid rgb(68, 68, 68);
            font-style: normal;
            font-variant: small-caps;
            text-transform: none;
        }

          .buttonClass {
              font-size:15px;
              font-family:Arial;
              width:110px;
              height:35px;
              border-width:1px;
              color:#fff;
              border-color:#4b8f29;
              font-weight:bold;
              border-top-left-radius:4px;
              border-top-right-radius:4px;
              border-bottom-left-radius:4px;
              border-bottom-right-radius:4px;
              box-shadow: 0px 10px 14px -7px #3e7327;
              text-shadow: 0px 1px 0px #5b8a3c;
              background:linear-gradient(#77b55a, #72b352);
            }

            .buttonClass:hover {
              background: linear-gradient(#72b352, #77b55a);
            }

            .buttonClass2 {
                  font-size:15px;
                  font-family:Arial;
                  width:110px;
                  height:35px;
                  border-width:1px;
                  color:#ffffff;
                  border-color:#d83526;
                  font-weight:bold;
                  border-top-left-radius:6px;
                  border-top-right-radius:6px;
                  border-bottom-left-radius:6px;
                  border-bottom-right-radius:6px;
                  box-shadow: 0px 10px 14px -7px #f7c5c0;
                  text-shadow: 0px 1px 0px #b23e35;
                  background:linear-gradient(#fc8d83, #e4685d);
                }

                .buttonClass2:hover {
                  background: linear-gradient(#e4685d, #fc8d83);
                }
        
     
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 100px; ">
        <asp:Table ID="Table1" class="tabel" runat="server">
            <asp:TableHeaderRow><asp:TableCell> <asp:Label ID="Label8" class="logo1" runat="server" Text="Broker de investitii"></asp:Label></asp:TableCell></asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell><asp:Label class="label" ID="Label1" runat="server" Text="Nume"></asp:Label></asp:TableCell>
                <asp:TableCell><asp:TextBox ID="tbnume" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2" class="label" runat="server" Text="Prenume"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbprenume" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label3" class="label" runat="server" Text="Ani experienta"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbani" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" class="label" runat="server" Text="Comision"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbcomision" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label5" class="label" runat="server" Text="Numar telefon"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbtelefon" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label6" class="label" runat="server" Text="Adresa mail"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbmail" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableFooterRow>
                <asp:TableCell>
                    <asp:Button ID="Button2" class="buttonClass" runat="server" Text="Adauga" OnClick="Button2_Click" />
                </asp:TableCell>

                <asp:TableCell HorizontalAlign="Right">
                     <asp:Button ID="Button3"  class="buttonClass2" runat="server" OnClick="Button3_Click" Text="Renunta" />
                </asp:TableCell>
            </asp:TableFooterRow>
        </asp:Table>
            </div>
    </form>
</body>
</html>
