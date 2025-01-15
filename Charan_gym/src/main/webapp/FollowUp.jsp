<%@ page isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Two Forms on the Same Page</title>
    <style>
        #secondForm {
            display: none; /* Initially hide the second form */
        }
    </style>
    <script>
        function showSecondForm() {
            document.getElementById("secondForm").style.display = "block"; // Show the second form
            return false; // Prevent default form submission
        }
    </script>
</head>
<body>
    <form id="firstForm" action="submitFirstFom" method="post">
        <h3>First Form</h3>
        <label for="firstInput">First Input:</label>
        <input type="text" id="firstInput" name="firstInput" required>
        <button type="submit"  onclick="showSecondForm()">Submit First Form</button>
    </form>

    <form id="secondForm" action="/submitSecondForm" method="post">
        <h3>Second Form</h3>
        <label for="secondInput">Second Input:</label>
        <input type="text" id="secondInput" name="secondInput" required>
        <button type="submit">Submit Second Form</button>
    </form>
</body>
</html>
