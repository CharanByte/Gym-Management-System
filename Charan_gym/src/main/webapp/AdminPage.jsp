<%@ page isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Open Sans", sans-serif;
    }

    body {
      min-height: 100vh;
      width: 100%;
      background: url("https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"), #000;
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
      color: white;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 30px;
      position: sticky;
      top: 0;
      width: 100%;
      height: 65px;
      z-index: 999;
      color: white;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
      background-color: #0E0E0E;
    }

    .header .logo {
      display: flex;
      align-items: center;
    }

    .logo-img {
      max-height: 51px;
      height: auto;
    }

    .header .nav {
      display: flex;
      align-items: center;
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

    .header .profile-img {
      max-height: 40px;
      width: 40px;
      border-radius: 50%;

    }

    .center-container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      margin-top: 50px;
      text-align: center;
    }

    .center-container img {
      height: 150px;
      width: 150px;
      border-radius: 75px;
      margin-bottom: 20px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
    }

    .message-container {
      display: flex;
      align-items: center;
      justify-content: center;
      width: auto;
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(8px);
      border-radius: 12px;
      text-align: center;
      padding: 20px;
      border: 1px solid rgba(255, 255, 255, 0.1);
      margin-top: 20px;
    }

    .message-container h1 {
      font-size: 2rem;
      font-weight: bold;
      color: yellow;
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
      <a href="enquiry">Enquiry</a>
      <a href="followup">FollowUp</a>
      <a href="register">Registration</a>
      <a href="registrationUpdate">Update</a>
      <img src="photo/${list.image}" alt="Profile Picture" class="profile-img">
    </nav>
  </header>

  <!-- Center Section -->
  <div class="center-container">
    <img src="photo/${list.image}" alt="Centered Image" class="centreImg">
    <div class="message-container">
      <h1>Welcome back, ${list.name}</h1>
    </div>
  </div>
</body>
</html>
