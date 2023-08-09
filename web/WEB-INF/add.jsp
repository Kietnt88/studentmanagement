<!DOCTYPE html>
<html>
<head>
    <title>Add New Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            margin: 0 auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 0;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        select:focus {
            border-color: #007bff;
            outline: none;
        }

        .button-container {
            text-align: center;
            margin-top: 10px;
        }

        .button-container button {
            padding: 10px 20px;
            font-size: 14px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add New Student</h1>
        <form action="" method="POST">
            <label>ID:</label>
            <input type="text"name="id" required>
            <label>Name:</label>
            <input type="text" name="name" required>
            <label>Password:</label>
            <input type="text" name="password" required>
            <label>Email:</label>
            <input type="text"name="email" required>
            <label>Phone:</label>
            <input type="text" name="phone" required>
            <label>Address:</label>
            <input type="text" name="address" required>
            <label>Gender:</label>
            <select name="gender" required>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
            <div class="button-container">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
