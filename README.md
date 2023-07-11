# Contact Form Application

This is a simple contact form application that allows users to submit their information, which is then saved to a MySQL database. The application also sends an email notification to the site owner with the form submission details.

## Prerequisites

Before running this application, make sure you have the following prerequisites installed:

- Web server (e.g., Apache, Nginx)
- PHP (version 7 or higher)
- MySQL database server
- SMTP server or access to a third-party email service provider

## Database Setup

1. Create a new database in your MySQL server. You can use a database management tool like phpMyAdmin or execute the following SQL command:

    ```sql
    CREATE DATABASE contact;
    ```

2. Create the `contact_form` table in the database by executing the following SQL command:

    ```sql
    USE your_database_name;
    CREATE TABLE contact_form (
      id INT AUTO_INCREMENT PRIMARY KEY,
      full_name VARCHAR(100) NOT NULL,
      phone_number VARCHAR(20) NOT NULL,
      email VARCHAR(100) NOT NULL,
      subject VARCHAR(100) NOT NULL,
      message TEXT NOT NULL,
      ip_address VARCHAR(45) NOT NULL,
      timestamp DATETIME NOT NULL
    );
    ```

3. Update the database credentials in the PHP code:
   - Open the `process_form.php` file.
   - Replace the placeholder values (`root`, ``, `contact`) with your actual MySQL database credentials.

## Application Setup

1. Clone or download the source code of this application to your local machine or server.

2. Place the application files in a directory accessible by your web server.

3. Configure the email settings:
   - Open the `process_form.php` file.
   - Locate the line: `// mail($to, $subject, $message);`
   - Uncomment the line by removing the double forward slashes (`//`) at the beginning.
   - Replace `"owner@example.com"` with the email address where you want to receive the form submission notifications.

4. (Optional) Configure SMTP settings:
   - If you prefer to use an SMTP server, refer to the previous conversation for instructions on how to update the `mail()` function in the `process_form.php` file with the appropriate SMTP configuration.

5. Start your web server.

6. Access the contact form application through your web browser by navigating to the URL where you placed the application files.

## Usage

- Fill in all the required fields in the contact form.
- Click the "Submit" button to submit the form.
- If all the form fields are valid, the form data will be saved to the database, and an email notification will be sent to the specified email address.
- If there are any validation errors, appropriate error messages will be displayed on the form page.



