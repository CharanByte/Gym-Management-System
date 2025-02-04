<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assign Users to Trainer</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .container { max-width: 400px; margin: 0 auto; }
        label { display: block; margin-bottom: 8px; font-weight: bold; }
        select, input[type="text"], button { width: 100%; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 4px; }
        button { background-color: #4CAF50; color: white; border: none; cursor: pointer; }
        button:hover { background-color: #45a049; }
        .user-list div { padding: 5px; background-color: #e9e9e9; margin-bottom: 5px; border-radius: 4px; display: flex; justify-content: space-between; align-items: center; }
        .user-list button { background-color: #ff4d4d; color: white; border: none; padding: 2px 6px; font-size: 12px; border-radius: 3px; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Assign Users to Trainer</h1>

        <label for="trainer">Select Trainer:</label>
        <select id="trainer">
            <option value="">-- Select a Trainer --</option>
            <c:forEach var="trainer" items="${trainers}">
                <option value="${trainer.id}">${trainer.name}</option>
            </c:forEach>
        </select>

        <label for="userSearch">Search User:</label>
        <input type="text" id="userSearch" placeholder="Enter user name">
        <div id="autocomplete-list"></div>

        <div class="user-list" id="selectedUsers"></div>
        <button onclick="assignUsers()">Assign Users</button>
        <div class="result" id="result"></div>
    </div>

    <script>
        let users = [];
        <c:forEach var="user" items="${users}">
            users.push({ id: "${user.id}", name: "${user.name}" });
        </c:forEach>

        let selectedUsers = [];

        function showSuggestions() {
            let input = $("#userSearch").val().toLowerCase();
            let list = $("#autocomplete-list").html("");

            users.forEach(user => {
                if (user.name.toLowerCase().includes(input)) {
                    let div = $("<div>").text(user.name).click(() => {
                        if (!selectedUsers.some(u => u.id === user.id)) {
                            selectedUsers.push(user);
                            renderSelectedUsers();
                        }
                        $("#userSearch").val("");
                        list.html("");
                    });
                    list.append(div);
                }
            });
        }

        function renderSelectedUsers() {
            let selectedDiv = $("#selectedUsers").html("");
            selectedUsers.forEach(user => {
                let div = $("<div>").text(user.name);
                let removeBtn = $("<button>").text("Remove").click(() => {
                    selectedUsers = selectedUsers.filter(u => u.id !== user.id);
                    renderSelectedUsers();
                });
                div.append(removeBtn);
                selectedDiv.append(div);
            });
        }

        function assignUsers() {
            let trainerName = $("#trainer option:selected").text();
            if (!trainerName || trainerName === "-- Select a Trainer --") {
                $("#result").html("<p style='color: red;'>Please select a trainer.</p>");
                return;
            }

            if (selectedUsers.length === 0) {
                $("#result").html("<p style='color: red;'>Please select at least one user.</p>");
                return;
            }

            let userNames = selectedUsers.map(u => u.name).join(", ");
            $("#result").html(`<p>Users <strong>${userNames}</strong> assigned to <strong>${trainerName}</strong>.</p>`);
        }

        $("#userSearch").on("input", showSuggestions);
    </script>
</body>
</html>
