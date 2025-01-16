<%@ page isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Enquiry Form</title>
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    <link rel="stylesheet" href="re.css" />
    <style>
        /* Import Google font - Poppins */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 20px;
  background: url("https://img.freepik.com/premium-photo/sneakers-dumbbells-sport-fitness-healthy-lifestyle_645697-4779.jpg?w=1380"), #000;
  background-position: center;
  background-size: cover;
}
.container {
  position: relative;
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 25px;
  border-radius: 8px;

}
.container header {
  font-size: 1.5rem;
  color: #333;
  font-weight: 500;
  text-align: center;
}
.container .form {
  margin-top: 30px;
}


.form .input-box {
  width: 100%;
  margin-top: 20px;
}
.input-box label {
  color: #333;
}
.form :where(.input-box input, .select-box) {
  position: relative;
  height: 40px;
  width: 100%;
  outline: none;
  font-size: 1rem;
  color: #707070;
  margin-top: 8px;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 0 15px;
}
.input-box input:focus {
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}
.form .column {
  display: flex;
  column-gap: 15px;
}
.form .gender-box {
  margin-top: 20px;
}
.gender-box h3 {
  color: #333;
  font-size: 1rem;
  font-weight: 400;
  margin-bottom: 8px;
}
.form :where(.gender-option, .gender) {
  display: flex;
  align-items: center;
  column-gap: 50px;
  flex-wrap: wrap;
}
.form .gender {
  column-gap: 5px;
}
.gender input {
  accent-color: rgb(70, 35, 247);
}
.form :where(.gender input, .gender label) {
  cursor: pointer;
}
.gender label {
  color: #707070;
}
.address :where(input, .select-box) {
  margin-top: 15px;
}
.select-box select {
  height: 100%;
  width: 100%;
  outline: none;
  border: none;
  color: #707070;
  font-size: 1rem;
}
.form button {
    margin-left: 30%;
  height: 40px;
  width: 30%;
  border-radius: 30px;
  color: #fff;
  font-size: 1rem;
  font-weight: 400;
  margin-top: 30px;
  border: none;
  cursor: pointer;
  transition: all 0.2s ease;
  background: rgb(102, 74, 241);
}
.form button:hover {
  background: rgb(45, 6, 240);
}
/*Responsive*/
@media screen and (max-width: 500px) {
  .form .column {
    flex-wrap: wrap;
  }
  .form :where(.gender-option, .gender) {
    row-gap: 15px;
  }
}


.container {
  background: url("https://img.freepik.com/free-photo/confident-sportswoman-with-dumbbell-dark_23-2147752923.jpg?t=st=1736603951~exp=1736607551~hmac=3ddc491f7863cb2de154b06fbf52371c2f1bf2df52c068ff3d30de72ca78b66b&w=1060") no-repeat center center / cover;
  padding: 25px;
  border-radius: 8px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
  color: white; /* Ensure text is readable */
}
.container header,
.container label
 {
  color: white; /* Match text color for better contrast */
}
.container {
  background: rgba(0, 0, 0, 0.5); /* Semi-transparent black overlay */
  backdrop-filter: blur(px); /* Optional blur for enhanced aesthetics */
  box-shadow: 0 4px 8px rgb(251, 250, 250); /* Add box shadow */
  border-radius: 8px; /* Optional: Ensure consistent rounded corners */
  padding: 20px; /* Optional: Add inner spacing for better visual appeal */

}


.column {
  display: flex;
  column-gap: 15px;
}

.input-box select {
  height: 48px;
  width: 100%; /* Ensure it occupies the same width as the input field */
  outline: none;
  font-size: 1rem;
  color: #707070;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 0 15px;
  margin-top: 15px;
  /* Optional: To ensure the select background is consistent */
}

    </style>
  </head>
  <body>
    <section class="container">
      <header>Enquiry Form</header>
      <form action="a" class="form">

<div class="form-group">
                        <label for="location">Location</label>
                        <select class="form-control" id="location" name="location">
                        <option value="">Select option</option>
                        <c:forEach items="${packagesEnumList}" var="loc">
                        <option value="${loc}">${loc}</option>
                        </c:forEach>
                        </select>

                    </div>
        <button>Submit</button>
      </form>
    </section>
  </body>
</html>