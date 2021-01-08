<%-- 
    Document   : index
    Created on : Nov 5, 2019, 9:58:47 AM
    Author     : joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
      *{
        box-sizing: border-box;
      }
      body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
      }
      a{
        color: white;
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
      .content {
        box-sizing: border-box;
        width: 65%;
        height: calc(100% - 75px);
        margin-left: 35%;
        margin-top: 75px;
        z-index: 0;
        position: fixed;
        background-repeat: no-repeat;
        background-image: url(room.jpg);
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
        <form name="update" action="patientAction.jsp">
          <div class="form-group">
            <label for="firstname">First Name:</label>
            <input type="text" class="form-control" name="firstname">
          </div>
          <div class="form-group">
            <label for="lastname">Last Name:</label>
            <input type="text" class="form-control" name="lastname">
          </div>
          <div class="form-group">
            <label for="dob">DOB:</label>
            <input type="date" class="form-control" name="dob">
          </div>
          <div class="form-group">
            <label for="mrn">Medical Record Number:</label>
            <input type="text" class="form-control" name="mrn">
          </div>
          <div class="form-group">
            <label for="roomnumber">Room Number:</label>
            <input type="text" class="form-control" name="roomnumber">
          </div>
          <div class="form-group">
            <label for="insurance">Insurance:</label>
            <input type="text" class="form-control" name="insurance">
          </div>
          <div class="form-group">
            <label for="ecname">Emergency Contact Name:</label>
            <input type="text" class="form-control" name="ecname">
          </div>
          <div class="form-group">
            <label for="ecnumber">Emergency Contact Number:</label>
            <input type="text" class="form-control" name="ecnumber">
          </div>
          <div class="form-group">
            <label class="w3-text-blue"><b>Doctor:</b></label>
            <select class="w3-select w3-border" name="doctorID" required>
              <option value="" disabled selected>Choose a doctor</option>
              <option value="d1">Dr. John Johnson</option>
              <option value="d2">Dr. Bill Billson</option>
              <option value="d3">Dr. James Jameson</option>
              <option value="d4">Dr. Kathy Katherson</option>
              <option value="d5">Dr. Pickles Pickleson</option>
            </select>  
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      <div class="sidetitle">
        Please register new patient
      </div>
      <div class="content">
      </div>
    </body>
  </html>
