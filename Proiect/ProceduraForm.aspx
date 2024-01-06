<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProceduraForm.aspx.cs" Inherits="Proiect.ProceduraForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         
           .buttonClass {
              font-size:15px;
              font-family:Arial;
              width:240px;
              height:40px;
              border-width:1px;
              color:#fff;
              border-color:#c584f3;
              font-weight:bold;
              border-top-left-radius:6px;
              border-top-right-radius:6px;
              border-bottom-left-radius:6px;
              border-bottom-right-radius:6px;
              box-shadow:inset 0px 1px 0px 0px #efdcfb;
              text-shadow:inset 0px 1px 0px #9752cc;
              background:linear-gradient(#dfbdfa, #bc80ea);
            }

            .buttonClass:hover {
              background: linear-gradient(#bc80ea, #dfbdfa);
            }

        
            .buttonClass2 {
              font-size:15px;
              font-family:Arial;
              width:140px;
              height:40px;
              border-width:1px;
              color:#fff;
              border-color:#84bbf3;
              font-weight:bold;
              border-top-left-radius:6px;
              border-top-right-radius:6px;
              border-bottom-left-radius:6px;
              border-bottom-right-radius:6px;
              box-shadow:inset 0px 1px 0px 0px #dcecfb;
              text-shadow:inset 0px 1px 0px #528ecc;
              background:linear-gradient(#bddbfa, #80b5ea);
            }

            .buttonClass2:hover {
              background: linear-gradient(#80b5ea, #bddbfa);
            }

     
                .tabel {
            
            background-image: url("img3.jpg");
            padding-bottom: 20px;

            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            margin: auto;
            font-family: "Arial Black", Gadget, sans-serif;
            font-size: 10px;
            letter-spacing: 1px;
            word-spacing: 2px;
            color: #84bbf3;
            font-weight: 700;
            text-decoration: none;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            text-align: center;
        }
                .logo3 {
            font-family: Georgia, serif;
            font-size: 15px;
            letter-spacing: 2px;
            word-spacing: 2px;
            color: #669FFF;
            font-weight: 700;
            text-decoration: underline solid rgb(68, 68, 68);
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div align="center" ">
        <div>
            <asp:Button ID="btnCreare" CssClass="buttonClass" runat="server" OnClick="btnCreare_Click" Text="Creare procedura de filtrare" />
             <asp:Button ID="btnApel" CssClass="buttonClass2" runat="server" OnClick="btnApel_Click" Text="Apel procedura" />
             <asp:Button ID="btnPaginaPrincipala" CssClass="buttonClass" runat="server" OnClick="btnPaginaPrincipala_Click" Text="Pagina principala" />
            <div>
            <asp:Label ID="Label1" runat="server" Text="Numarul minim de ani de experienta:"></asp:Label>
            <asp:TextBox ID="tbMinAni" runat="server">2</asp:TextBox> 
                </div>
            <div>
                <asp:Label ID="Label2" runat="server" Text="Numarul maxim de ani de experienta:"></asp:Label>
            <asp:TextBox ID="tbMaxAni" runat="server">5</asp:TextBox>
            </div>
        </div>
        <div align="center"> 
            <asp:TextBox ID="tbMes" runat="server" class="tabel" Height="208px"  Width="805px" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Numarul de brokeri cu experienta in intervalul dat: "></asp:Label>
            <asp:TextBox ID="tbNrBrokeri" runat="server"></asp:TextBox>
        </div>
        </div>

        <br />
        <br />

        <div align="center">
            <asp:Label ID="Label4" CssClass="logo3" runat="server" Text="Label"> Vrei sa vizualizezi portofoliile unuia dintre brokerii nostri de top?Introdu id-ul lui si analizeaza-i portofoliile:</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server">11</asp:TextBox>
        <div>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="buttonClass" Text="Creare procedura de cautare" />
         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="buttonClass2" Text="Apel procedura" />
            </div>
        <div> 
            <asp:TextBox ID="tbMes2" runat="server" class="tabel" Height="208px"  Width="805px" TextMode="MultiLine"></asp:TextBox>
        </div>
        </div>

        <br />
        <br />

        <div align="center">
            <asp:Label ID="Label5" CssClass="logo3" runat="server" Text="Label"> Vrei sa analizezi continutul unui portofoliu?Introdu id-ul acestuia si analizeaza performanta investitiilor:</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server">3</asp:TextBox>
        <div>
         <asp:Button ID="Button3" runat="server" CssClass="buttonClass" Text="Creare procedura de cautare" OnClick="Button3_Click" />
         <asp:Button ID="Button4" runat="server" CssClass="buttonClass2" Text="Apel procedura" OnClick="Button4_Click" />
            </div>
        <div> 
            <asp:TextBox ID="tbMes3" runat="server" class="tabel" Height="208px"  Width="805px" TextMode="MultiLine"></asp:TextBox>
        </div>
        </div>
        </form>
</body>
</html>
