<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trainer and Slot Page</title>
  <style>
      /* General Styles */
      body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 0;
          background-color: #8EC5FC;
          background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
      }

      header {
          background-color: #333;
          color: #fff;
          padding: 20px;
          text-align: center;
      }

      .container {
          width: 50%; /* Decrease width */
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
          padding: 20px;
          background-color: #fff;
          margin: 20px auto; /* Center the container */
          border-radius: 8px;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }

      .trainer, .slot {
          width: 90%; /* Slightly smaller than container */
          margin: 10px;
          padding: 20px;
          background-color: #e2e2e2;
          border-radius: 8px;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
          background-color: #D9AFD9;
          background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%);
          text-align: center; /* Align text in the middle */
      }

      /* Responsive Styles */
      @media (max-width: 768px) {
          .container {
              width: 70%; /* Adjust for smaller screens */
          }

          .trainer, .slot {
              width: 100%;
          }
      }

      @media (max-width: 480px) {
          .container {
              width: 90%;
          }

          header h1 {
              font-size: 24px;
          }

          .trainer h2, .slot h2 {
              font-size: 20px;
          }

          .trainer h1, .slot h1 {
              font-size: 14px;
          }
      }
  </style>


</head>
<body>
<header>
    <h1>Welcome ${registrationEntity.name}</h1>
</header>

<div class="container">
    <section class="trainer">
        <h2>Trainer</h2>
        <h1>${entity.trainerName}</h1>
    </section>

    <section class="slot">
        <h2>Slot</h2>
        <h1>${entity.slot}</h1>
    </section>
</div>
</body>
</html>