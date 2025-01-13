<%@ page isELIgnored = "false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Form Details</title>
    <style>
        .form-container {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            width: 300px;
        }

        .details-container {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            width: 300px;
        }

        .details-container h3 {
            margin: 0;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Enter Your Details</h1>

    <div class="form-container">
        <form action="followUp">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>

            <button type="submit">Submit</button>
        </form>
    </div>

    <div class="details-container" id="detailsContainer" style="display: none;">
        <h3>Submitted Details</h3>
        <p><strong>Name:</strong> <span id="displayName"></span></p>
        <p><strong>Email:</strong> <span id="displayEmail"></span></p>
        <p><strong>Age:</strong> <span id="displayAge"></span></p>
    </div>

    <script>
        function displayDetails(event) {
            event.preventDefault(); // Prevent form from submitting and page refresh

            // Get values from the form
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const age = document.getElementById("age").value;

            // Display entered details
            document.getElementById("displayName").textContent = name;
            document.getElementById("displayEmail").textContent = email;
            document.getElementById("displayAge").textContent = age;

            // Show the details container
            document.getElementById("detailsContainer").style.display = "block";

            // Optionally clear the form after submission
            document.getElementById("detailsForm").reset();
        }
    </script>
</body>
</html>
