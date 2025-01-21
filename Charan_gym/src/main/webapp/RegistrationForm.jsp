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
        border-radius: 10px;
       box-shadow: 0px 2px 10px rgba(100 100, 100, 20);
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
      <a href="registrationUpdate">Update</a>
    </nav>
  </header>
  <div class="container mt-5 form-container">
    <div class="row">
      <div class="col-md-5">
        <img src="https://media.istockphoto.com/id/542197916/photo/running-on-treadmill.jpg?s=612x612&w=0&k=20&c=CYywmb71uOepSHWa534hG9230AzawSa4i3sA89o4qCQ=" alt="Form Image" class="form-image">
      </div>
      <div class="col-md-7">
        <h2 class="text-center" style="color:white">Registration Form</h2>
        <form action="registeration" method="post">
          <div class="form-group">
            <label for="firstName">Full Name</label>
            <input type="text" class="form-control" id="firstName" name="name" placeholder="Enter first name" required value="${name}">
          </div>
          <div class="form-group">
            <label for="lastName">Email</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="Enter email" required value="${email}">
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="email">Password</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
            </div>
            <div class="form-group col-md-6">
              <label for="phone">Phone Number</label>
              <input type="tel" class="form-control" id="phone" name="phoneNo" placeholder="Enter phone number" required value="${phoneNo}">
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="city">Package</label>
              <select class="form-control" id="gympackage" name="gympackage" required>
                <option value="">Select package</option>
                <c:forEach items="${packagesEnumList}" var="loc">
                  <option value="${loc}">${loc}</option>
                </c:forEach>
              </select>
            </div>
            <div class="form-group col-md-6">
              <label for="state">Trainer</label>
              <select class="form-control" id="trainer" name="trainer" required>
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
                <input type="text" class="form-control" id="discount" placeholder="Enter discount" name="discount" aria-label="Server" required>
                <span class="input-group-text">%</span>
              </div>
            </div>
            <div class="form-group col-md-6">
              <label for="zipcode">Total Amount</label>
              <div class="input-group mb-3">
                <span class="input-group-text">&#8377;</span>
                <input type="text" class="form-control" id="amount" aria-label="Amount (to the nearest dollar)" name="amount">
                <span class="input-group-text">.00</span>
              </div>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="password">Amount paid</label>
              <div class="input-group mb-3">
                <span class="input-group-text">&#8377;</span>
                <input type="text" class="form-control" id="amountPaid" aria-label="Amount (to the nearest dollar)" name="amountPaid" required>
                <span class="input-group-text">.00</span>
              </div>
            </div>
            <div class="form-group col-md-6">
              <label for="confirmPassword">Balance Amount</label>
              <div class="input-group mb-3">
                <span class="input-group-text">&#8377;</span>
                <input type="text" class="form-control" id="balanceamount" aria-label="Amount (to the nearest dollar)" name="balanceAmount">
                <span class="input-group-text">.00</span>
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary btn-center">Register</button>
        </form>
      </div>
    </div>
  </div>
<script>


 const onField=()=>{
      var placeName=document.getElementById("email");
         var placeValue=placeName.value;
      if(placeValue!=""){
            var xhttp=new XMLHttpRequest();
              xhttp.open("GET","http://localhost:8080/Charan_gym/placeName/" + placeValue,true);
              xhttp.send();

              xhttp.onload = function() {
                  document.getElementById("nameValid").innerHTML = this.responseText;
              }
              }


  document.addEventListener('DOMContentLoaded', function () {
    const packagePrices = {
      "BASIC": 10000,
      "PRO": 13000,
      "ELITE": 15000,
      "VIP": 25000
    };

    const trainerPrices = {
      "NOT_REQUIED": 0,
      "LIKI": 1000,
      "NANDAN": 1000,
      "RAJU": 1000
    };

    const packageSelect = document.getElementById('gympackage');
    const trainerSelect = document.getElementById('trainer');
    const discountInput = document.querySelector('input[name="discount"]');
    const amountInput = document.querySelector('input[name="amount"]');
    const amountPaidInput = document.querySelector('input[name="amountPaid"]');
    const balanceAmountInput = document.querySelector('input[name="balanceAmount"]');

    function updateAmount() {
      let packageAmount = 0;
      let trainerAmount = 0;
      let discount = 0;

      const selectedPackage = packageSelect.value;
      const selectedTrainer = trainerSelect.value;

      if (packagePrices[selectedPackage]) {
        packageAmount = packagePrices[selectedPackage];
      }

      if (trainerPrices[selectedTrainer]) {
        trainerAmount = trainerPrices[selectedTrainer];
      }

      if (discountInput.value) {
        discount = parseFloat(discountInput.value) || 0;
      }

      let totalAmount = packageAmount + trainerAmount;

      totalAmount -= (totalAmount * discount) / 100;

      amountInput.value = totalAmount.toFixed(2);

      updateBalance();
    }

    function updateBalance() {
      const amount = parseFloat(amountInput.value) || 0;
      const amountPaid = parseFloat(amountPaidInput.value) || 0;

      // Calculate balance
      const balance = amount - amountPaid;

      balanceAmountInput.value = balance.toFixed(2);
    }

    packageSelect.addEventListener('change', updateAmount);
    trainerSelect.addEventListener('change', updateAmount);
    discountInput.addEventListener('input', updateAmount);

    amountPaidInput.addEventListener('input', updateBalance);

    amountInput.addEventListener('input', updateBalance);
  });
</script>


  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
