<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormZed.aspx.cs" Inherits="Proiect.StaticticiBrokeriForm" %>

<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
            text-align: center;
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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 500px; ">
        <div style=" margin-top: 20px; margin-left: 36px;"><asp:Label ID="Label8" class="logo1" runat="server" Text="Clasamentul brokerilor"></asp:Label></div>
        <div>
             <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server">
        </cc1:ZedGraphWeb>
        <div style="margin-left: 120px; margin-top: 17px; "><asp:Button ID="Button1" class="myButton" runat="server" OnClick="Button1_Click" Text="Pagina anterioara" /></div>
        </div>
       </div>
        
    </form>
</body>
</html>
