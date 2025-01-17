<%@ page isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Form</title>
  <!-- Bootstrap CSS -->
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
      border: 5px solid #333; /* Adds a border around the container */
      border-radius: 10px; /* Optional: rounded corners */
      background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
      margin-top: 80px; /* Add margin to push form down to avoid overlap with sticky header */
  }

  .form-image {
      max-width: 100%;
      height: auto;
      height: 100%;
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
    <a href="followup">FollowUp</a>
    <a href="registration">Registration</a>
    <a href="update">Update</a>
  </nav>
</header>

  <div class="container mt-5 form-container">
    <div class="row">
      <div class="col-md-5">
        <img src="https://media.istockphoto.com/id/542197916/photo/running-on-treadmill.jpg?s=612x612&w=0&k=20&c=CYywmb71uOepSHWa534hG9230AzawSa4i3sA89o4qCQ=" alt="Form Image" class="form-image">
      </div>
      <div class="col-md-7">
        <h2 class="text-center">Registration Form</h2>
        <form>
          <div class="form-group">
            <label for="firstName">First Name</label>
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
                                                    <c:forEach items="${packagesEnumList}" var="loc">
                                                    <option value="${loc}">${loc}</option>
                                                    </c:forEach>
                                             </select>
            </div>
          </div>
          <div class="form-row">
           <div class="form-group col-md-6">
            <label for="city">Discount</label>
            <input type="text" class="form-control" id="city" placeholder="Enter discount">
             </div>
            <div class="form-group col-md-6">
            <label for="state">State</label>
              <input type="text" class="form-control" id="state" placeholder="Enter state">
             </div>
         </div>
          <div class="form-group">
            <label for="zipcode">Zip Code</label>
            <input type="text" class="form-control" id="zipcode" placeholder="Enter zip code">
          </div>
          <div class="form-group">
            <label for="dob">Date of Birth</label>
            <input type="date" class="form-control" id="dob">
          </div>
          <div class="form-group">
            <label for="gender">Gender</label><br>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="gender" id="male" value="Male">
              <label class="form-check-label" for="male">Male</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="gender" id="female" value="Female">
              <label class="form-check-label" for="female">Female</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="gender" id="other" value="Other">
              <label class="form-check-label" for="other">Other</label>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" placeholder="Enter password">
            </div>
            <div class="form-group col-md-6">
              <label for="confirmPassword">Confirm Password</label>
              <input type="password" class="form-control" id="confirmPassword" placeholder="Confirm password">
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-block">Register</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
