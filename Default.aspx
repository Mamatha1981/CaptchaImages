<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CaptchaImage.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            loadCaptcha();
        });
        function loadCaptcha() {
            $.ajax({
                type: 'GET', url: 'Home/generateCaptcha',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (data) { $("#m_imgCaptcha").attr('src', data); },
                error: function (data) { alert("Error while loading captcha image") }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img id="m_imgCaptcha" alt="Click to Change image" src="" title="Click to Change image"
            onclick="loadCaptcha();" style="width: 200px; height: 50px;" />
        <asp:TextBox ID="m_tbCaptcha" Width="150px" runat="server"></asp:TextBox>
        <asp:Button ID="m_btValidate" runat="server" Text="Validate" Width="120px" OnClick="m_btValidate_Click" />
        <br />
        <asp:Label ID="m_lbMessage" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
