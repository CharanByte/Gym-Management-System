<%@ page isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      margin: 0;
      background-image: url("https://img.freepik.com/premium-photo/3d-rendering-iron-fitness-equipment-black-podium_338925-153.jpg?w=1060");
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      color: #000;
    }
    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 30px;
      position: sticky;
      top: 0;
      width: 100%;
      height: 60px;
      z-index: 999;
      color: white;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
      background-color: #1B1E23;
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
      color: #f0c14b;
    }
    .header .logo {
      display: flex;
      align-items: center;
    }
    .logo-img {
      max-height: 51px;
      max-width: 120%;
      height: auto;
    }
    .form-container {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 30px;
      border: 1px solid #333;
      border-radius: 10px;
      background-color: rgba(255, 255, 255, 0);
      margin-top: 80px;
    }
    .form-image {
      max-width: 100%;
      height: auto;
      height: 100%;
    }
    label {
      color: white;
      font-weight: 100px;
    }
    .btn-center {
      display: block;
      margin: 20px auto;
      padding: 4px 100px;
      font-size: 1.2rem;
    }
  </style>
</head>
<body>
  <header class="header">
    <div class="logo">
      <img src="https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=277,h=270,fit=crop/AwvJoE0xx0IZMJ8K/ft_power_gym_logo_file_png-01-Yg2apa87NxI6eQXX.png" alt="Logo" class="logo-img">
    </div>
    <nav class="nav">
      <a href="index.jsp">Home</a>
      <a href="enquiry">Enquiry</a>
      <a href="followup">FollowUp</a>
      <a href="update">Update</a>
    </nav>
  </header>
  <div class="container mt-5 form-container">
    <div class="row">
      <div class="col-md-5">
        <img src="https://media.istockphoto.com/id/542197916/photo/running-on-treadmill.jpg?s=612x612&w=0&k=20&c=CYywmb71uOepSHWa534hG9230AzawSa4i3sA89o4qCQ=" alt="Form Image" class="form-image">
      </div>
      <div class="col-md-7">
        <h2 class="text-center" style="color:white">Registration Form</h2>
        <form>
          <div class="form-group">
            <label for="firstName">Full Name</label>
            <input type="text" class="form-control" id="firstName" name="name" placeholder="Enter first name">
          </div>
          <div class="form-group">
            <label for="lastName">Email</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="Enter email">
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="email">Password</label>
              <input type="password" class="form-control" id="email" name="password" placeholder="Enter password">
            </div>
            <div class="form-group col-md-6">
              <label for="phone">Phone Number</label>
              <input type="tel" class="form-control" id="phone" name="phoneNo" placeholder="Enter phone number">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="city">Package</label>
              <select class="form-control" id="location" name="package">
                <option value="">Select package</option>
                <c:forEach items="${packagesEnumList}" var="loc">
                  <option value="${loc}">${loc}</option>
                </c:forEach>
              </select>
            </div>
            <div class="form-group col-md-6">
              <label for="state">Trainer</label>
              <select class="form-control" id="location" name="trainer">
                <option value="">Select trainer</option>
                <c:forEach items="${gymTrainersEnums}" var="loc">
                  <option value="${loc}">${loc}</option>
                </c:forEach>
              </select>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="state">Discount</label>
              <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Enter discount" name="discount" aria-label="Server">
                <span class="input-group-text">%</span>
              </div>
            </div>
            <div class="form-group col-md-6">
              <label for="zipcode">Amount</label>
              <div class="input-group mb-3">
                <span class="input-group-text">&#8377;</span>
                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="amount">
                <span class="input-group-text">.00</span>
              </div>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="password">Amount paid</label>
              <div class="input-group mb-3">
                <span class="input-group-text">&#8377;</span>
                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="amountPaid">
                <span class="input-group-text">.00</span>
              </div>
            </div>
            <div class="form-group col-md-6">
              <label for="confirmPassword">Balance Amount</label>
              <div class="input-group mb-3">
                <span class="input-group-text">&#8377;</span>
                <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="balanceAmount">
                <span class="input-group-text">.00</span>
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-center">Register</button>
        </form>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
