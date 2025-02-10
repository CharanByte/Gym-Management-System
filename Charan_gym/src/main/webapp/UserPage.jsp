<%@ page isELIgnored = "false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            min-height: 100vh;
        }
        .sidebar {
            background-color: #2c2c2c;
            color: #fff;
            width: 250px;
            padding: 20px;
        }
        .sidebar h3 {
            margin-bottom: 30px;
        }
        .sidebar ul {
            list-style: none;
        }
        .sidebar ul li {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: #fff;
            margin-left: 10px;
        }
        .sidebar ul li a:hover {
            color: #f54b64;
        }
        .main-content {
            flex: 1;
            padding: 20px;
            background-color: #fff;
        }
        .profile-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .profile-header h1 {
            font-size: 24px;
        }
        .profile-card {
            display: flex;
            gap: 20px;
        }
        .profile-card img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            object-fit: cover;
        }
        .profile-info {
            flex: 1;
        }
        .profile-info h2 {
            margin-bottom: 5px;
        }
        .personal-info {
            margin-top: 30px;
        }
        .personal-info h3 {
            margin-bottom: 10px;
        }
        .personal-info table {
            width: 100%;
            border-collapse: collapse;
        }
        .personal-info table th, .personal-info table td {
            text-align: left;
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
        .save-button {
            display: inline-block;
            background-color: #f54b64;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
        }
        .save-button:hover {
            background-color: #e43e57;
        }
        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                text-align: center;
            }
            .main-content {
                padding: 10px;
            }
        }

                      .profile-details {
                          display: flex;
                          flex-direction: column;
                          gap: 10px;
                          margin-left: 0px;
                          padding-top:20px;
                      }
                      .profile-details p {
                          margin: 0;
                      }
                      .profile-details strong {
                          font-weight: bold;
                      }


    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <h3>Dashboard</h3>
            <ul>
                <li><img src="https://i.ibb.co/SXWPRLz/user.png" alt="Dashboard Icon" style="width: 20px; height: 20px;"><a href="#">Personal Profile</a></li>
                 <li><img src="https://cdn-icons-png.flaticon.com/512/9050/9050508.png" alt="Dashboard Icon" style="width: 20px; height: 20px;"><a href="trainerAndSlot">Trainer And Slot</a></li>
            </ul>
        </div>
        <div class="main-content">
            <div class="profile-header">
                <h1>My Profile</h1>
            </div>
            <div class="profile-card">
                <img src="photo/${list.profileImage}" alt="Profile Picture">
                <div class="profile-info">
                  <h2>${list.name}</h2>

                    <p>Location: ${profile.location}</p>
                </div>

            </div>
          <div class="profile-details">
              <p><strong>Age:</strong> ${list.age}</p>
              <p><strong>Weight:</strong> ${list.weight}</p>
              <p><strong>Height:</strong> ${list.height}</p>
              <p><strong>Chest size:</strong> ${list.chestSize}</p>
          </div>



            <div class="personal-info">
                <h3>Personal Info</h3>
                <table>
                    <c:forEach var="person" items="${profileList}">
                        <tr>
                            <th>Full Name</th>
                            <td>${list.name}</td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>${list.email}</td>
                        </tr>
                        <tr>
                            <th>Contact Number</th>
                            <td>${list.phoneNumber}</td>
                        </tr>
                        <tr>
                            <th>Gym Package</th>
                            <td>${list.gympackage}</td>
                        </tr>
                        <tr>
                            <th>Trainer</th>
                            <td>${list.trainer}</td>
                        </tr>
                        <tr>
                            <th>Total Amount</th>
                            <td>${list.amount}</td>
                        </tr>
                         <tr>
                           <th>Total AmountPaid</th>
                               <td>${list.totalAmountPaid}</td>
                             </tr>
                          <tr>
                           <th>Discount</th>
                           <td>${list.discount} %</td>
                         </tr>
                           <tr>
                             <th>Balance Amount</th>
                          <td>${list.balanceAmount}</td>
                             </tr>

                    </c:forEach>
                </table>
                <a href="updateProfile" ><button class="save-button">Update Profile</button></a>
            </div>
        </div>
    </div>


</body>
</html>
