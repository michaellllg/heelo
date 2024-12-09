<?php include 'api/login.php'; ?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CJCRSG</title>
  
  </head>

 
  <body>









        <div class="form-box login">
            <div class="form-details">
                <h2>Welcome Back</h2>
                <p>Please log in using your personal information to stay connected with us.</p>
            </div>
            <div class="form-content">
                <h2>LOG IN</h2>
                <!-- Login Form -->
                <form action="api/login.php" method="POST">
    <div class="input-field">
        <input type="text" name="email" required>
        <label>Email</label>
    </div>
    <div class="input-field">
        <input type="password" name="password" required>
        <label>Password</label>
    </div>
    <a href="forgot-password.php" class="forgot-pass-link">Forgot password?</a>
    <button type="submit">Log In</button>
                </form>
                <div class="bottom-link">
                    Don't have an account?
                    <a href="forgot-password.php" id="signup-link">Sign up</a>
                </div>
            </div>
        </div>
        <div class="form-box signup">
            <div class="form-details">
                <h2>Create Account</h2>
                <p>To become a part of our community, please sign up using your personal information.</p>
            </div>
            <div class="form-content">
                <h2>SIGN UP</h2>
                <form action="api/signup.php" method="POST"> <!-- Keep this action pointing to signup.php -->
        <div class="input-field">
            <input type="text" name="fullname" required>
            <label>Enter your full name</label>
        </div>
        <div class="input-field">
            <input type="email" name="email" required>
            <label>Enter your email</label>
        </div>
        <div class="input-field">
            <input type="password" name="password" required>
            <label>Enter your password</label>
        </div>
        <div class="policy-text">
            <input type="checkbox" id="policy" required>
            <label for="policy">
                I agree to the
                <a href="#" class="option">Terms & Conditions</a>
            </label>
        </div>
        <button type="submit">Sign Up</button>

        <div class="bottom-link">
            Already have an account? 
            <a href="#" id="login-link">Login</a>
        </div>
    </form>
            </div>
        </div>
    </div>
 
  </body>
</html>