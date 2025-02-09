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
        background-color: #f4f4f4;
    }

    header {
        background-color: #333;
        color: #fff;
        padding: 20px;
        text-align: center;
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        padding: 20px;
        background-color: #fff;
        margin: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .trainer, .slot {
        flex: 1 1 45%;
        margin: 10px;
        padding: 20px;
        background-color: #e2e2e2;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    /* Responsive Styles */
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
        }

        .trainer, .slot {
            flex: 1 1 100%;
            margin: 10px 0;
        }
    }

    @media (max-width: 480px) {
        header h1 {
            font-size: 24px;
        }

        .trainer h2, .slot h2 {
            font-size: 20px;
        }

        .trainer p, .slot p {
            font-size: 14px;
        }
    }

   </style>
</head>
<body>
<header>
    <h1>Welcome to the Training Page</h1>
</header>

<div class="container">
    <section class="trainer">
        <h2>Trainer</h2>
        <p>Details about the trainer will go here.</p>
    </section>

    <section class="slot">
        <h2>Slot</h2>
        <p>Details about the available slots will go here.</p>
    </section>
</div>
</body>
</html>