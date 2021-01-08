<%-- 
    Document   : patientAction.jsp
    Created on : Nov 5, 2019, 10:38:27 AM
    Author     : joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%
      String firstname = request.getParameter("firstname");
      String lastname = request.getParameter("lastname");
      String dob = request.getParameter("dob");
      String mrn = request.getParameter("mrn");
      String rn = request.getParameter("roomnumber");
      String insurance = request.getParameter("insurance");
      String ecName = request.getParameter("ecname");
      String ecNum = request.getParameter("ecnumber");
      String docID = request.getParameter("doctorid");
      //int dID = Integer.parseInt(docID);
      String sql = "insert into patient values (0, '"+firstname+"', " +
              "'"+lastname+"', '"+dob+"', '"+mrn+"', '"+rn+"', '"+insurance
              +"', '"+ecName+"', '"+ecNum+"', '"+docID+"')";
      DBConnect dbConnect = new DBConnect();
      String message = dbConnect.insertData(sql);
    %>.
    <h1><%= message %><h1/>
      <h2><br/>
      <br/>First Name is :<%= firstname %>
      <br/>Last Name is :<%= lastname %>
      <br/>DOB is :<%= dob %>
      <br/>Medical Record Number :<%= mrn %>
      <br/>Record Number :<%= rn %>
      <br/>Insurance : <%= insurance %>
      <br/>Emergency Contact Name :<%= ecName %>
      <br/>Emergency Contact Number :<%= ecNum %>
      <br/>Doctor ID :<%= docID %>
    </h2>
  </body>
</html>
