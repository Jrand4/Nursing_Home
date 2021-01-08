<%-- 
    Document   : searchAction
    Created on : Dec 5, 2019, 5:08:49 PM
    Author     : xarro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Query results</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
      *{
        box-sizing: border-box;
        border-collapse: collapse;
      }
      body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
      }
      a{
        color: white;
      }
      tr{
        border: 1px solid #000;
      }
      table{
        border: 4px solid #000;
        background-color: white;
        margin-left: 25px;
      }
      td{
        border: 1px solid #000;
        padding-left: 3px;
      }
      th{
        border: 2px solid #000;
        background-color: #66ccff;
      }
      ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #0099ff;
      }

      li {
        float: left;
      }

      li a {
        display: block;
        color: white;
        text-align: center;
        padding: 15px 25px;
        text-decoration: none;
      }

      /* Change the link color to #111 (black) on hover */
      li a:hover {
        background-color: #0099ff;
        border: 1px solid #fff;
        color: white;
      }
      .navbar{
        box-sizing: border-box;
        height: 75px;
        width: 100%;
        margin-left: 35%;
        padding-left: 20px;
        padding-right: 20px;
        color: white;
        position: fixed;
        background-color: #0099ff;
        border: 1px solid #000;
        z-index: 1;
      }
      .sidetitle{
        box-sizing: border-box;
        height: 75px;
        width: 35%;
        padding-left: 20px;
        padding-right: 20px;
        text-align: center;
        color: white;
        font-weight: bold;
        font-size: 2vw;
        position: fixed;
        z-index: 2;
        top: 0;
        left: 0;
        background-color: #0066cc;
        border: 1px solid #000;
      }
      .sidecontent {
        box-sizing: border-box;
        height: 100%;
        width: 35%;
        margin-top: 75px;
        margin-bottom: 0%;
        padding-bottom: 10%;
        padding-left: 20px;
        padding-right: 20px;
        position: fixed;
        z-index: 3;
        top: 0;
        left: 0;
        background-color: #ddd;
        overflow-x: hidden;
        border: 1px solid #000;
      }
      .content2{
        padding-left: 25px;
      }
      .content {
        box-sizing: border-box;
        width: 65%;
        height: calc(100% - 75px);
        margin-left: 35%;
        margin-top: 75px;
        z-index: 0;
        position: fixed;
        background-repeat: no-repeat;
        background-image: url(nurse.jpg);
        background-size: 100% 100%;
        border: 5px solid #000;
      </style>
    </head>
    <body>
      <div class="navbar" style="color: white;">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="register.jsp">Register Patient</a></li>
        </ul>
      </div>
      <div class="sidecontent">
        <form name="queryGet" action="searchAction.jsp">
          <div class="form-group">
            <label for="firstname">First Name:</label>
            <input type="text" class="form-control" name="firstname">
          </div>
          <div class="form-group">
            <label for="lastname">Last Name:</label>
            <input type="text" class="form-control" name="lastname">
          </div>
          <div class="form-group">
            <label for="roomnum">Room Number:</label>
            <input type="text" class="form-control" name="roomnum">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      <div class="sidetitle">
        Who are you looking for?
      </div>
      <div class="content">
        <div class="content2">
          <%
            String firstName = request.getParameter("firstname");
            String lastName = request.getParameter("lastname");
            String roomNum = request.getParameter("roomnum");
            String sql = "select * from patient where firstname like '%" + firstName + "%' AND lastname like '%" + lastName + "%' and roomnumber like '%" + roomNum + "%'";
            DBConnect dbConnect = new DBConnect();
          %>
          <h2><%= sql%></h2>
        </div>
        <div class="w3-container w3-table w3-border">
          <%=  dbConnect.htmlTable(sql)%>
        </div>
      </div>
    </body>
  </html>
