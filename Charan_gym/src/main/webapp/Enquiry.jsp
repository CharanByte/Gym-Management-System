<%@ page isELIgnored = "false"%>
<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Enquiry Form</title>

    <link rel="stylesheet" href="re.css" />
    <style>

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
  height: 50px;
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
  background: rgba(0, 0, 0, 0.5);
  backdrop-filter: blur(px);
  box-shadow: 0 4px 8px rgb(251, 250, 250);
  border-radius: 8px;
  padding: 20px;

}


.column {
  display: flex;
  column-gap: 15px;
}

.input-box select {
  height: 48px;
  width: 100%;
  outline: none;
  font-size: 1rem;
  color: #707070;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 0 15px;
  margin-top: 15px;
}

    </style>
</head>
<body>
<section class="container">
    <header>Enquiry Form</header>
    <form action="enquiry" class="form" method="post">
        <div class="input-box">
            <label>Full Name</label>
            <input type="text" placeholder="Enter full name" name="name" required />
        </div>

        <div class="input-box">
            <label>Email Address</label>
            <input type="text" placeholder="Enter email address" name="email" required />
        </div>

        <div class="column">
            <div class="input-box">
                <label>Phone Number</label>
                <input type="number" placeholder="Enter phone number" name="phoneNumber" required />
            </div>
            <div class="input-box">
                <label>Age</label>
                <input type="number" placeholder="Enter your age" name="age" required />
            </div>
        </div>
        <div class="gender-box">
            <h3 style="color: #fff;">Gender</h3>
            <div class="gender-option">
                <div class="gender">
                    <input type="radio" id="check-male" name="gender" value="male" checked />
                    <label for="check-male">Male</label>
                </div>
                <div class="gender">
                    <input type="radio" id="check-female" name="gender" value="female" />
                    <label for="check-female">Female</label>
                </div>
                <div class="gender">
                    <input type="radio" id="check-other" name="gender" value="prefer_not_to_say" />
                    <label for="check-other">Prefer not to say</label>
                </div>
            </div>

        </div>
        <div class="input-box address">
            <label>Address</label>
            <input type="text" placeholder="Enter street address" name="address" required />
            <div class="column">
                <div class="input-box">
                    <select name="status" id="status">
                        <option>Select status</option>
                        <option value="Enquiry">Enquiry</option>

                    </select>
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Enter your area" name="areaName" required />
                </div>
            </div>


        </div>
        <button>Submit</button>
    </form>
</section>
</body>
</html>