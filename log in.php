<?php
// Database connection
$conn = new mysqli('localhost', 'root', '', 'user_management');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Collect login data
$email = $_POST['email'];
$password = $_POST['password'];

// Query database for user
$sql = "SELECT * FROM users WHERE email = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();

    // Verify password
    if (password_verify($password, $user['password'])) {
        echo "Login successful! Here are your details:<br>";
        echo "Name: " . $user['name'] . "<br>";
        echo "Professional: " . $user['professional'] . "<br>";
        echo "Email: " . $user['email'] . "<br>";
        echo "Phone: " . $user['phone'] . "<br>";
        echo "Nationality: " . $user['nationality'] . "<br>";
    } else {
        echo "Invalid password.";
    }
} else {
    echo "User not found.";
}

$stmt->close();
$conn->close();
?>
