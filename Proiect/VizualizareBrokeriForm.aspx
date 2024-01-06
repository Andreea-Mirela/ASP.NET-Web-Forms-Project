<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VizualizareBrokeriForm.aspx.cs" Inherits="Proiect.VizualizareBrokeriForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invest App</title>

     <style type="text/css">
        body {
            
            background-image: url("img.jpg");
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
        }
        .logo2 {
            font-family: Impact, Charcoal, sans-serif;
            font-size: 20px;
            letter-spacing: 2px;
            word-spacing: 2px;
            color: #B1D0FF;
            font-weight: normal;
            text-decoration: solid rgb(68, 68, 68);
            font-style: normal;
            font-variant: small-caps;
            text-transform: none;
        }
        .logo3 {
            font-family: Georgia, serif;
            font-size: 19px;
            letter-spacing: 2px;
            word-spacing: 2px;
            color: #669FFF;
            font-weight: 700;
            text-decoration: underline solid rgb(68, 68, 68);
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        .logo4 {
           font-family: "Times New Roman", Times, serif;
            font-size: 16px;
            letter-spacing: 2px;
            word-spacing: 2px;
            color: #2D1E33;
            font-weight: 700;
            text-decoration: none;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        .logo5 {
            font-family: "Times New Roman", Times, serif;
            font-size: 16px;
            letter-spacing: 2px;
            word-spacing: 2px;
            font-weight: 700;
            text-decoration: none;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            color: #6e3b5f;
        }
        .radiobuttonlist {
        }
        .radiobuttonlist td{
        }
        .myButton {
	        box-shadow:inset 0px 1px 0px 0px #efdcfb;
	        background:linear-gradient(to bottom, #dfbdfa 5%, #bc80ea 100%);
	        background-color:#dfbdfa;
	        border-radius:6px;
	        border:1px solid #c584f3;
	        display:inline-block;
	        cursor:pointer;
	        color:#ffffff;
	        font-family:Arial;
	        font-size:15px;
	        font-weight:bold;
	        padding:6px 24px;
	        text-decoration:none;
	        text-shadow:0px 1px 0px #9752cc;
        }
        .myButton:hover {
	        background:linear-gradient(to bottom, #bc80ea 5%, #dfbdfa 100%);
	        background-color:#bc80ea;
        }
         .myButton:active {
             position: relative;
             top: 1px;
         }

         .buttonClass2 {
              font-size:15px;
              font-family:Arial;
              width:110px;
              height:35px;
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
             .buttonClass3 {
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

            .buttonClass3:hover {
              background: linear-gradient(#72b352, #77b55a);
            }

            .buttonClass4 {
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

                .buttonClass4:hover {
                  background: linear-gradient(#e4685d, #fc8d83);
                }
         .mydropdownlist1{
                color: #fff;
                font-size: 17px;
                padding: 5px 10px;
                border-radius: 5px 12px;
                background-color: #B45F9C;
                font-weight: bold;
         }

    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style="margin-left: 100px; margin-top: 17px; "><asp:Label ID="Label8" class="logo1" runat="server" Text="Tranzactii la Bursa Asistate de un Broker"></asp:Label></div>
        <div style="margin-left: 150px; "> <asp:Label ID="Label9" class="logo2" runat="server" Text="Combina avantajele contului asistat de broker cu cele ale contului online"></asp:Label></div>
        
        <div style="margin-left: 60px; ">
        <div style="margin-top: 50px; "> <asp:Label ID="Label10" class="logo3" runat="server" Text="Consulta lista noastra de Brokeri: "></asp:Label></div>

        <div style="margin-bottom: 25px; margin-left: 30px;" >
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="radiobuttonlist" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Sunt vizitator</asp:ListItem>
            <asp:ListItem>Sunt administrator</asp:ListItem>
        </asp:RadioButtonList>
            </div>


        <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSourceBrokeri" GridLines="None" Height="154px" Width="440px" DataKeyNames="IdBroker" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" ForeColor="#333333" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="IdBroker" HeaderText="IdBroker" SortExpression="IdBroker" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Nume" HeaderText="Nume" SortExpression="Nume" />
                <asp:BoundField DataField="Prenume" HeaderText="Prenume" SortExpression="Prenume" />
                <asp:BoundField DataField="AniExperienta" HeaderText="AniExperienta" SortExpression="AniExperienta" />
                <asp:BoundField DataField="Comision" HeaderText="Comision" SortExpression="Comision" />
                <asp:BoundField DataField="NumarTelefon" HeaderText="NumarTelefon" SortExpression="NumarTelefon" />
                <asp:BoundField DataField="AdresaMail" HeaderText="AdresaMail" SortExpression="AdresaMail" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceBrokeri" runat="server" ConnectionString="<%$ ConnectionStrings:InvestDBConnectionString %>" DeleteCommand="DELETE FROM [Brokeri] WHERE [IdBroker] = @IdBroker" InsertCommand="INSERT INTO [Brokeri] ([Nume], [Prenume], [AniExperienta], [Comision], [NumarTelefon], [AdresaMail]) VALUES (@Nume, @Prenume, @AniExperienta, @Comision, @NumarTelefon, @AdresaMail)" SelectCommand="SELECT * FROM [Brokeri]" UpdateCommand="UPDATE [Brokeri] SET [Nume] = @Nume, [Prenume] = @Prenume, [AniExperienta] = @AniExperienta, [Comision] = @Comision, [NumarTelefon] = @NumarTelefon, [AdresaMail] = @AdresaMail WHERE [IdBroker] = @IdBroker">
            <DeleteParameters>
                <asp:Parameter Name="IdBroker" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nume" Type="String" />
                <asp:Parameter Name="Prenume" Type="String" />
                <asp:Parameter Name="AniExperienta" Type="Double" />
                <asp:Parameter Name="Comision" Type="Double" />
                <asp:Parameter Name="NumarTelefon" Type="String" />
                <asp:Parameter Name="AdresaMail" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nume" Type="String" />
                <asp:Parameter Name="Prenume" Type="String" />
                <asp:Parameter Name="AniExperienta" Type="Double" />
                <asp:Parameter Name="Comision" Type="Double" />
                <asp:Parameter Name="NumarTelefon" Type="String" />
                <asp:Parameter Name="AdresaMail" Type="String" />
                <asp:Parameter Name="IdBroker" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <div style="margin-left: 550px; margin-top: 20px; ">
        <asp:Button ID="Button3" class="myButton" runat="server" OnClick="Button3_Click" Text="Formular de adaugare broker" Visible="False" />
                </div>
         <div>
            <asp:Label ID="Label7" class="logo5" runat="server" Text="Sunteti siguri ca doriti sa adaugati brokerul: " Visible="False"></asp:Label>
            </div>
            <div style="margin-left: 100px;">
        <div>
            <asp:Label ID="Label1" class="logo4" runat="server" Text="Nume" Visible="False"></asp:Label>
            </div>
        <div>
            <asp:Label ID="Label2" class="logo4" runat="server" Text="Prenume" Visible="False"></asp:Label>
            </div>
        <div>
            <asp:Label ID="Label3" class="logo4" runat="server" Text="Ani experienta" Visible="False"></asp:Label>
            </div>
        <div>
            <asp:Label ID="Label4" class="logo4" runat="server" Text="Comision" Visible="False"></asp:Label>
            </div>
        <div>
            <asp:Label ID="Label5" class="logo4" runat="server" Text="Numar telefon" Visible="False"></asp:Label>
            </div>
        <div>
            <asp:Label ID="Label6" class="logo4" runat="server" Text="Adresa mail" Visible="False"></asp:Label>
        </div>
                </div>
        <div>
            <asp:Button ID="Button2" class="buttonClass3" runat="server" Text="Salveaza"  OnClick="Button2_Click" Visible="False" />
            <asp:Button ID="Button4" class="buttonClass4" runat="server" OnClick="Button4_Click" Text="Renunta" Visible="False" />
        </div>
            <div style="margin-left: 247px; margin-top: 20px; ">
            <div>
                <asp:Label ID="Label11" class="logo4" runat="server" Text="Alege-ti un broker! Devino un investitor de succes!" Visible="False"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label12" class="logo4" runat="server" Text="Vizualizeaza topul nostru:" Visible="False"></asp:Label>
                <asp:DropDownList ID="DropDownList1" CssClass="mydropdownlist1" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="False">
                <asp:ListItem>Alege tip clasament</asp:ListItem>
                <asp:ListItem>Pie</asp:ListItem>
                <asp:ListItem>Bare</asp:ListItem>
                <asp:ListItem>Linie</asp:ListItem>
            </asp:DropDownList>
            </div>
                </div>
         <div style="margin-left: 247px; margin-top: 20px; ">
                <asp:Label ID="Label13" class="logo5" runat="server" Text="Filtreaza pe baza experientei:" Visible="False"></asp:Label>
                <asp:Button ID="btnProc" runat="server" class="buttonClass2" Text="Incepe" OnClick="btnProc_Click" Visible="False" />
            </div>
      </div>
    </form>
</body>
</html>
