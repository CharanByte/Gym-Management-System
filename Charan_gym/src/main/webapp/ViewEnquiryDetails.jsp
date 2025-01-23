<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Follow-up Details</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
  <style>
    body {
      min-height: 100vh;
      margin: 0;
      background-color: #212529;
      padding-top: 56px;
    }
 .header {
     display: flex;
     justify-content: space-between;
     align-items: center;
     padding: 15px 30px;
     position: fixed;
              top: 0;
     width: 100%;
     height: 65px;
     z-index: 1000;
     color: white;

     overflow: hidden
     box-shadow: 0 2px 4px rgba(0, 0, 0, 0);
           background-color: #2F2D2E;
   }

   .header .logo {
     font-size: 1.5rem;
     font-weight: bold;
   }

   .header .nav {
     display: flex;
     gap: 20px;
   }

   .header .nav a {
    color: white;
        text-decoration: none;
        font-size: 1rem;
        transition: color 0.3s;
   }

   .header .nav a:hover {
     color: #f0c14b; /* Highlight color for links on hover */
   }
   .header .logo {
     display: flex;
     align-items: center;
   }

   .logo-img {
     max-height: 51px; /* Adjust the height as needed */
     max-width: 120%;
     height: auto;
   }

    .background-image {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-image: url('https://i.ibb.co/SJ4J9Hm/3685cce6-14c2-454c-836f-22bace48038b.jpg');
      background-size: cover;
      background-position: center;
      z-index: 0;
      opacity: 1;
    }

    .overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.4);
      z-index: 1;
    }

    .container {
      position: relative;
      z-index: 2;
      max-width: 1200px;
      background-color: rgba(255, 255, 255, 0.8);
      padding: 30px;
      border-radius: 10px;
      box-shadow: none;
      overflow-x: auto;
    }

    table {
      width: 100%;
      table-layout: fixed;
      border-collapse: collapse;
      background-color: #343a40;
      color: #fff;
      max-height: 400px;
      overflow-y: auto;
    }

    th, td {
      text-align: center;
      padding: 10px;
      border: 1px solid #555;
    }

    th {
      background-color: #495057;
    }

    tr:hover {
      background-color: #6c757d;
    }
    .hide-column {
        display: none;
      }
  </style>
</head>
<body>

 <!-- Header Section -->
 <header class="header">
   <div class="logo">
     <img src="https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=277,h=270,fit=crop/AwvJoE0xx0IZMJ8K/ft_power_gym_logo_file_png-01-Yg2apa87NxI6eQXX.png" alt="Logo" class="logo-img">
   </div>
   <nav class="nav">
     <a href="index.jsp">Home</a>
     <a href="followup">FollowUp</a>
     <a href="register">Registration</a>
     <a href="registrationUpdate">Update</a>
   </nav>
 </header>

  <div class="background-image"></div>
  <div class="overlay"></div>

  <div class="container">
    <h3 class="text-center" style="color: #212529;">Follow-up Track Details</h3>

    <table id="followupTable" class="table">
      <thead>
        <tr>
         <th class="hide-column">Follow-up ID</th>
         <th class="hide-column">Enquiry ID</th>
          <th>Updated By</th>
            <th>Follow-up Date</th>
          <th>Status</th>
          <th>Reason</th>

        </tr>
      </thead>
      <tbody>
        <c:forEach var="followup" items="${list}" varStatus="status">
          <tr>


            <td>${followup.updatedBy}</td>
            <td>${followup.updatedDate}</td>
            <td>${followup.customer_status}</th>
            <td>${followup.customer_reason}</th>

          </tr>
        </c:forEach>
      </tbody>

    </table>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
