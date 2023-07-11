<!DOCTYPE html>
<html>
<head>
  <title>Contact Form</title>
</head>
<body>
  <h1>Contact Form</h1>
  <?php
  // Validate form submission
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $full_name = $_POST['full_name'];
    $phone_number = $_POST['phone_number'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    // Perform validation
    $errors = [];

    if (empty($full_name) || empty($phone_number) || empty($email) || empty($subject) || empty($message)) {
      $errors[] = "All fields are mandatory.";
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $errors[] = "Invalid email format.";
    }

    if (count($errors) === 0) {
      // Save  data to the database
      $servername = "localhost";
      $username = "root";
      $password = "";
      $dbname = "contact";

      // Create connection
      $conn = new mysqli($servername, $username, $password, $dbname);

      // Check connection
      if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

      // Store IP address and timestamp in variables
      $ip_address = $_SERVER['REMOTE_ADDR'];
      $timestamp = date("Y-m-d H:i:s");

      // Prepare, bind parameter and execute the sql
      $stmt = $conn->prepare("INSERT INTO contact_form (full_name, phone_number, email, subject, message, ip_address, timestamp) VALUES (?, ?, ?, ?, ?, ?, ?)");
      $stmt->bind_param("sssssss", $full_name, $phone_number, $email, $subject, $message, $ip_address, $timestamp);
      $stmt->execute();

      // // Prepare and execute the SQL query to insert data into the contact_form table
      // $stmt = $conn->prepare("INSERT INTO contact_form (full_name, phone_number, email, subject, message, ip_address, timestamp) VALUES (?, ?, ?, ?, ?, ?, ?)");
      // $stmt->bind_param("sssssss", $full_name, $phone_number, $email, $subject, $message, $_SERVER['REMOTE_ADDR'], date("Y-m-d H:i:s"));
      // $stmt->execute();

      $stmt->close();
      $conn->close();

      // Send email notification 
      //$to = "owner@example.com";
      //$subject = "New Form Submission";
      //$message = "Name: $full_name\nPhone Number: $phone_number\nEmail: $email\nSubject: $subject\nMessage: $message";

      // Uncomment the line below to send the email
      // mail($to, $subject, $message);

      // Display success message
      echo "Form submitted successfully!";
    } else {
      // Display validation errors
      foreach ($errors as $error) {
        echo $error . "<br>";
      }
    }
  }
  ?>
  <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    <div>
      <label for="full_name">Full Name:</label>
      <input type="text" id="full_name" name="full_name" required>
    </div>
    <div>
      <label for="phone_number">Phone Number:</label>
      <input type="tel" id="phone_number" name="phone_number" required>
    </div>
    <div>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div>
      <label for="subject">Subject:</label>
      <input type="text" id="subject" name="subject" required>
    </div>
    <div>
      <label for="message">Message:</label>
      <textarea id="message" name="message" required></textarea>
    </div>
    <button type="submit">Submit</button>
  </form>
</body>
</html>
