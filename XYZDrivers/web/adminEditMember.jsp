<%-- 
    Document   : memberEdit
    Created on : 13-Nov-2017, 13:03:11
    Author     : Colin Berry
--%>

<%@include file="common.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/table.css" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/main.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/centered.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/edittable.css" />
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/logo/favicon.ico" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Member</title>
    </head>
    
    <body>
        <h1>Editing Member</h1>
        <form onsubmit="alert('Saved Member Data')" action="Edit" method="POST">
            <input name="id" type="hidden" value="${member.id}"/>
            <table id="member" border="1" cellpadding="5">
                <tr>
                    <th>ID: </th>
                    <td><c:out value="${member.id}"/></td>
                </tr>
                <tr>
                    <th>Name: </th>
                    <td>
                        <input name="name" type="text" value="${member.name}"/>
                    </td>
                </tr>
                <tr>
                    <th>Address: </th>
                    <td>
                        <input name="address" type="text" value="${member.address}"/>
                    </td>
                </tr>
                <tr>
                    <th>DOB: </th>
                    <td>
                        <input name="dob" type="date" value="${member.dob}"/>
                    </td>
                </tr>
                <tr>
                    <th>DOR: </th>
                    <td>
                        <input name="dor" type="date" value="${member.dor}"/>
                    </td>
                </tr>
                <tr>
                    <th>Status: </th>
                    <td>
                        <input name="status" type="text" value="${member.status}"/>
                    </td>
                </tr>
                <tr>
                    <th>Balance: </th>
                    <td>
                        <input name="balance" type="number" step="0.01" value="${member.balance}"/>
                    </td>
                </tr>
            </table>
            <br/>
            <input type="hidden" name="type" value="member"/>
            <input type="submit" value="Save"/>
        </form>
        <form action="View">
            <br/>
            <input type="hidden" name="type" value="members"/>
            <input type="submit" value="Back to Admin Dashboard"/>
        </form>
    </body>
</html>
