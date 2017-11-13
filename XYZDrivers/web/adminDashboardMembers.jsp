<%-- 
    Document   : adminDashboardMembers.jsp
    Created on : 13-Nov-2017, 14:47:07
    Author     : Colin Berry
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="com.xyzdrivers.models.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/table.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
    </head>
    <body>
        <h1>Admin Dashboard</h1>
        <form action="AdminDashboard">
            <input type="submit" name="type" value="View Members">
            <input type="submit" name="type" value="View Claims">
        </form>
        <form action="AdminDashboard/MemberEdit">
            <table id="table">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Date of Birth</th>
                    <th>Date of Registration</th>
                    <th>Status</th>
                    <th>Balance</th>
                </tr>
                <% for(Member m : (ArrayList<Member>) request.getAttribute("membersList")) { %>
                <tr>
                    <td><%= m.getId() %></td>
                    <td><%= m.getName() %></td>
                    <td><%= m.getAddress() %></td>
                    <td><%= m.getDob() %></td>
                    <td><%= m.getDor() %></td>
                    <td><%= m.getStatus() %></td>
                    <td><%= m.getBalance() %></td>
                    <td>
                        <input type="radio" name="id" value="<%= m.getId() %>"/>
                    </td>
                </tr>
                <% } %>
            </table>
            <button onclick="onClick()">Select Member</button>
        </form>
          <a id="Navigate" href="./index.html">
            <input 
              type="button"
              id="homeButton"
              style="

                background-image: url(http://cdn3.blogsdna.com/wp-content/uploads/2010/03/Windows-Phone-7-Series-Icons-Pack.png);
                background-repeat: no-repeat;
                background-position: -272px -112px;
                cursor:pointer;
                height: 40px;
                width: 40px;
                border-radius: 26px;
                border-style: solid;
                border-color:#000;
                border-width: 3px;" title="Navigate"
              />  
          </a>
    </body>
</html>

