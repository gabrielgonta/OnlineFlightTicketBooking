# ✈️ Online Flight Ticket Booking System - Fullstack PHP Bootstrap Version

## Description

Welcome to the Online Ticket Booking System! 🎟️ 
This web-based platform allows users to easily search for flights, book tickets, and make secure payments online. Users can also view their booking history, download e-tickets, reset their passwords, and provide feedback on their experience. The system is designed to streamline the flight booking process with a simple and intuitive interface.

## Prerequisites
To run the project locally, make sure you have the following installed :

- PHP
- MySQL
- A local web server like XAMPP, MAMP, or Apache

## Installation

### Clone the repository :

```
git clone https://github.com/gabrielgonta/OnlineFlightTicketBooking.git
```

### Configure the Database :

Create a new database in phpMyAdmin called ```ofbms_db```.
Import the ```flight_booking.sql``` file into this newly created ofbms_db database to create the necessary tables.
Update the database connection settings in ```config.php``` (or wherever the database connection is set up).

### Set Up the Server :
Place the project files in your web server's root directory (e.g., ```/var/www/html/``` for Apache).
Start your local server (e.g., Apache with <b>XAMPP</b> or <b>MAMP</b>).

### Configure Payment Gateway:
If using a payment gateway like PayPal or Stripe, set up the credentials in ```payment.php``` or relevant configuration files.

## Deployment

Deploye you server :

You can now access the flight booking system via this address: http://localhost/index.php/ :

## Admin Access
To access the admin panel, use the following credentials:

Username: ```admin```
Password: ```admin```

The admin panel allows you to manage flights, bookings, and users.

## Usage

Register : New users can create an account on the registration page.

Login : Access the flight booking system by logging in with your credentials.

Book a Flight : Search for available flights, select one, enter passenger details, and complete the booking by making a payment.

View Bookings : After booking, users can view their flight history and download e-tickets.

Submit Feedback : After completing a trip, users can submit feedback about their experience.

Admin Panel : Admins can log in with the credentials mentioned above to manage the system.

## How I try to stand out

      ✔️ User Registration and Login: Users can create an account to manage their bookings.
      ✔️ Flight Search & Booking: Search for available flights and book tickets in real-time.
      ✔️ Secure Payment Processing: Integrated payment gateway for hassle-free payments.
      ✔️ E-ticket Generation: Get a downloadable e-ticket after a successful booking.
      ✔️ Booking History: View past bookings and manage upcoming flights.
      ✔️ Password Reset: Reset forgotten passwords with ease.
      ✔️ User Feedback: Share your experience and suggestions to help improve the system.

## File Structure

Here’s a brief overview of the key files in the project:

File	Description
```index.php```	: Homepage for flight search and general information.
```register.php``` : User registration page.
```login.php```	: Login page for accessing the system.
```book_flight.php``` : Page for selecting flights and entering passenger details.
```payment.php```	: Handles payment processing through the integrated gateway.
```e_ticket.php``` : Generates and provides a downloadable e-ticket.
```my_flights.php``` : Displays the user’s booking history.
```feedback.php``` : Allows users to submit feedback after their journey.
```reset-pwd.php```	: Page to reset the user's password.
```admin.php```	: Admin panel for managing flights, users, and bookings.

## Technologies Used

- Frontend: HTML, CSS, Bootstrap, JavaScript

- Backend: PHP

- Database: MySQL

- Payment Integration: (Add details of payment gateway used, like PayPal or Stripe)

## Security

For security purposes, sensitive data such as user passwords and payment details are securely handled. It is recommended to enable HTTPS on the production server to ensure encrypted communication.

## Authors

* **Gabriel Gonta** - *Initial work* - [OnlineFlightTicketBooking](https://github.com/gabrielgonta/OnlineFlightTicketBooking.git)