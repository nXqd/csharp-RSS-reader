<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register TagName="feedControl" TagPrefix="rss" Src="~/RssList.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>News Union</title>
    <style>
        #feedList
        {
            margin: auto;
            width: 700px;
            font-family: Verdana;
            font-size: 12px;
            box-shadow: 0 0 10px #aaa;
        }
        table 
        {
            border: 0;
            width: 100%;
            padding: 10px 0 20px 0;
        }
        tr 
        {
            padding: 2px 0 2px 9px;
            }
        .source, .time 
        {
            font-size: x-small;
            text-transform: uppercase;
        }
        .Gawker 
        {
            background: #8dbf3f;
        }
        .Engadget 
        {
            background: #fc70b8;
        }
        .Gizmodo 
        {
            background: rgb(87, 213, 255);
            }
            a  
            {
                text-decoration: none;
                color: #000;
                font-weight: bold;
                font-size: 11px;
                }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="feedList">
        <rss:feedControl ID="rssFeed" runat="server"  />
    </div>
    </form>
</body>
</html>
