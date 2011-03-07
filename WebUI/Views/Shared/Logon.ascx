﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (Request.IsAuthenticated) {
%>
        Welcome <b><%= Html.Encode(Page.User.Identity.Name) %></b>!
        [ <%= Html.ActionLink("Log Off", "SignOff", "Account") %> ]
<%
    }
    else {
%> 
        [ <%= Html.ActionLink("Sign In", "SignIn", "Account") %> ]
<%
    }
%>
