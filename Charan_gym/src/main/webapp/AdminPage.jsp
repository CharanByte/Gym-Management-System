<%@ page isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Glassmorphism Login Form | CodingNepal</title>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Open Sans", sans-serif;
    }

    body {
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      width: 100%;
      padding: 0 10px;
      position: relative;
      background: url("https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"), #000;
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
      color: white;
    }

    .header {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 15px 30px;
      z-index: 1000;
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(255, 255, 255, 0.2);
    }

    .logo {
      font-size: 1.5rem;
      font-weight: 700;
      color: #fff;
    }

    .nav a {
      margin-left: 20px;
      color: #fff;
      text-decoration: none;
      font-size: 1rem;
      transition: color 0.3s ease;
    }

    .nav a:hover {
      color: #ddd;
    }

    .message-container {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 50%;
      height: 200px;
      background: rgba(255, 255, 255, 0.15);
      backdrop-filter: blur(8px);
      border-radius: 12px;
      text-align: center;
      padding: 20px;
      border: 1px solid rgba(255, 255, 255, 0.3);
    }

    .message-container h1 {
      font-size: 2rem;
      font-weight: bold;
      color: #fff;
    }
  </style>
</head>
<body>
  <!-- Header Section -->
  <header class="header">
    <div class="logo">Logo</div>
    <nav class="nav">
      <a href="Enquiry.jsp">Enquiry</a>
      <a href="#">Follow</a>
      <a href="#">Registration</a>
      <a href="#">Update</a>
    </nav>
  </header>

  <!-- Welcome Message Section -->
  <div class="message-container">
    <h1>Welcome back, Admin! You have successfully logged in.</h1>
  </div>
</body>
</html>
