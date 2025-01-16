<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Follow-up</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
  <style>
   body {
     min-height: 100vh;
     margin: 0;
     background-image: url("https://img.freepik.com/premium-photo/3d-rendering-iron-fitness-equipment-black-podium_338925-153.jpg?w=1060"); /* Replace with the actual image URL */
     background-size: cover; /* Ensures the image covers the entire page */
     background-position: center; /* Centers the image */
     background-repeat: no-repeat; /* Prevents the image from repeating */
     background-attachment: fixed; /* Makes the background image fixed while scrolling */
     color: #000; /* Black text color */
   }

   .container {
     margin: 50px auto;
     width: 95%;
     background-color: rgba(255, 255, 255, 0.7); /* Slightly more opaque background */
     padding: 20px;
     border-radius: 10px;
     box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15); /* Softer shadow for a smoother effect */
     transition: background-color 0.3s ease; /* Smooth transition for background-color */
   }

    .search-row {
      margin-bottom: 20px;
      display: flex;
      justify-content: flex-end;
      gap: 10px;
    }

    .table-container {
      background-color: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
    }

    .pagination {
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    .page-link {
      color: #007bff;
      text-decoration: none;
      margin: 0 5px;
      padding: 8px 12px;
      border: 1px solid #007bff;
      border-radius: 5px;
    }

    .page-link:hover {
      background-color: #007bff;
      color: #fff;
    }

    .page-link.active {
      background-color: #007bff;
      color: #fff;
    }
  </style>
</head>
<body>
  <div class="container">
    <!-- Search Row -->
    <div class="search-row">
      <form action="followupoperation" method="POST" style="display: flex; gap: 10px;">
        <input type="text" class="form-control" id="id" name="name" placeholder="Enter Enquiry Name" required>
        <button type="submit" class="btn btn-primary">Find</button>
      </form>
    </div>

    <!-- Table Container -->
    <c:if test="${not empty list}">
      <div class="table-container">
        <h4 class="text-center">Enquiry Details</h4>
        <form action="updateStatus" method="POST">
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th>Enquiry ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Area</th>
                <th>Age</th>
                <th>Status</th>
                <th>Reason</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${list}" var="enquiry">
                <tr>
                  <td>${enquiry.id}</td>
                  <td>${enquiry.name}</td>
                  <td>${enquiry.email}</td>
                  <td>${enquiry.phoneNumber}</td>
                  <td>${enquiry.areaName}</td>
                  <td>${enquiry.age}</td>
                  <td>
                    <select class="form-select" name="status" required>
                      <option value="Enquiry" ${enquiry.status == 'Pending' ? 'selected' : ''}>Enquiry</option>
                      <option value="Joining" ${enquiry.status == 'Completed' ? 'selected' : ''}>Joining</option>
                      <option value="Not Answering" ${enquiry.status == 'Pending' ? 'selected' : ''}>Not Answering</option>
                      <option value="Not Interested" ${enquiry.status == 'In Progress' ? 'selected' : ''}>Not Interested</option>
                    </select>
                  </td>
                  <td>
                    <textarea class="form-control" name="reason" rows="2">${enquiry.reason}</textarea>
                  </td>
                  <td>
                    <button type="submit" class="btn btn-success">Update</button>
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </form>

        <!-- Pagination Links -->
        <c:if test="${totalPages > 1}">
          <div class="pagination">
            <c:forEach begin="1" end="${totalPages}" var="i">
              <a href="followupoperation?page=${i}" class="page-link ${currentPage == i ? 'active' : ''}">${i}</a>
            </c:forEach>
          </div>
        </c:if>
      </div>
    </c:if>
  </div>
</body>
</html>
