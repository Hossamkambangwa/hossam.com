<?php
// Database connection
$conn = new mysqli('localhost', 'root', '', 'user_management');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Collect form data
$name = $_POST['name'];
$professional = $_POST['professional'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
$confirm_password = $_POST['confirm_password'];
$phone = $_POST['phone'];
$nationality = $_POST['nationality'];

// Check password confirmation
if ($_POST['password'] !== $confirm_password) {
    die("Passwords do not match.");
}

// Insert user data into the database
$sql = "INSERT INTO users (name, professional, email, password, phone, nationality) VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssss", $name, $professional, $email, $password, $phone, $nationality);

if ($stmt->execute()) {
    echo "Registration successful! <a href='log in.html'>Login here</a>";
} else {
    echo "Error: " . $conn->error;
}

$stmt->close();
$conn->close();
?>
