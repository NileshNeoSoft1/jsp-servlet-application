<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">My Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link <%= request.getParameter("tab")==null || "home".equals(request.getParameter("tab")) ? "active" : "" %>"
                       href="welcome.jsp?tab=home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= "product".equals(request.getParameter("tab")) ? "active" : "" %>"
                       href="welcome.jsp?tab=product">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= "help".equals(request.getParameter("tab")) ? "active" : "" %>"
                       href="welcome.jsp?tab=help">Help</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link <%= "contact".equals(request.getParameter("tab")) ? "active" : "" %>"
                       href="welcome.jsp?tab=contact">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="container mt-3 text-center">
    <% String tab = request.getParameter("tab"); %>
    <% if(tab==null || "home".equals(tab)) { %>

    <img src="Images/marvel.jpg" class="img-fluid w-200" alt="Dashboard Banner">
    <div style="font-family: Arial, sans-serif; color: #333; padding: 45px; max-width: 800px; margin: auto; margin-top: 30px;">
        <h2 style="color: #2c3e50;">🦸 Welcome to Marvel Studios</h2>
        <p style="font-size: 16px; line-height: 1.6; background-color: #f4f4f4; padding: 15px; border-radius: 8px;">
            Marvel Studios has revolutionized modern storytelling through its iconic characters and cinematic universe. From the genius of Tony Stark (Iron Man) to the unwavering courage of Steve Rogers (Captain America), each hero brings depth, emotion, and inspiration to fans worldwide. With groundbreaking films like <em>Avengers: Endgame</em> and <em>Black Panther</em>, Marvel has crafted a legacy of interconnected stories that celebrate heroism, diversity, and imagination. Whether it's the mystical powers of Doctor Strange or the fierce determination of Natasha Romanoff (Black Widow), Marvel's characters continue to shape pop culture and ignite the dreams of generations.
        </p>
    </div>
    <% } else if("product".equals(tab)) { %>
    <div style="font-family: Arial, sans-serif; color: #333; padding: 50px; max-width: 800px; margin: auto;">
        <h3 style="color: #2c3e50;"> About Us</h3>
        <p style="font-size: 16px; line-height: 1.6; background-color: #f4f4f4; padding: 15px; border-radius: 8px;">
            Welcome to <strong>Marvel Studios</strong>, Marvel Studios, a subsidiary of Walt Disney Studios, is a powerhouse in the entertainment industry known for producing blockbuster superhero films and television series. Originally founded as Marvel Films in 1993, it was rebranded as Marvel Studios in 1996. The studio is headquartered in Burbank, California, and is led by Kevin Feige, who has been instrumental in shaping the Marvel Cinematic Universe (MCU).
        </p>

        <h3 style="color: #2c3e50;"> Our Products</h3>
        <p style="font-size: 16px; line-height: 1.6; background-color: #f4f4f4; padding: 15px; border-radius: 8px;">
            At <strong>Marvel Studios</strong>, Marvel Studios is best known for creating interconnected stories featuring iconic characters like Iron Man, Captain America, Thor, and Black Panther. Its films have redefined modern cinema, blending action, humor, and emotional depth across multiple franchises. With divisions like Marvel Studios Animation and Marvel Television, the studio continues to expand its reach across media platforms.
        </p>
    </div>
    <% } else if("help".equals(tab)) { %>
    <div style="font-family: Arial, sans-serif; color: #333; padding: 55px; max-width: 800px; margin: auto;">
        <h3 style="color: #2c3e50;">🛠️ Help & Support</h3>
        <p style="font-size: 16px; line-height: 1.6; background-color: #f4f4f4; padding: 15px; border-radius: 8px;">
            Need assistance? We're here to help! Whether you have questions about sizing, shipping, returns, or product care, our support team is ready to guide you. We believe shopping should be simple and stress-free, so we've made it easy to find answers and get in touch.
        </p>

        <p style="font-size: 16px; line-height: 1.6; background-color: #f4f4f4; padding: 15px; border-radius: 8px;">
            Visit our FAQ section for quick answers, or reach out via email or phone for personalized support. We’re committed to making your experience with <strong>Marvel Studios</strong> smooth and enjoyable—because great style deserves great service.
        </p>
    </div>
    <% } else if("contact".equals(tab)) { %>
    <div style="font-family: Arial, sans-serif; color: #333; padding: 55px; max-width: 800px; margin: auto;">
        <h3 style="color: #2c3e50;">📞 Contact Us</h3>
        <p style="font-size: 16px; line-height: 1.6; background-color: #f4f4f4; padding: 15px; border-radius: 8px;">
            We’d love to hear from you! Whether you have questions about our products, need help with an order, or just want to share your feedback, our team is here to assist. At <strong>Marvel Studios</strong>, customer satisfaction is at the heart of everything we do.
        </p>

        <p style="font-size: 16px; line-height: 1.6; background-color: #f4f4f4; padding: 15px; border-radius: 8px;">
            Reach out to us via email, phone, or social media. We aim to respond within 24 hours during business days. Your voice matters—and we’re always ready to listen.
        </p>

        <div style="font-size: 16px; line-height: 1.6; background-color: #eaf2f8; padding: 15px; border-radius: 8px; margin-top: 10px;">
            <strong>Name:</strong> Nick Fury<br>
            <strong>Email:</strong> contact@example.com<br>
            <strong>Phone:</strong> +1 (555) 123-4567<br>
            <strong>Address:</strong> the S.A.B.E.R. Space Station<br>
            <strong>Business Hours:</strong> Monday–Friday, 9:00 AM – 5:00 PM (CST)<br><br>
            <strong>Social Media:</strong><br>
            Facebook: <a href="https://facebook.com/example" style="color: #1a0dab;">facebook.com/example</a><br>
            Twitter: <a href="https://twitter.com/example" style="color: #1a0dab;">twitter.com/example</a><br>
            LinkedIn: <a href="https://linkedin.com/company/example" style="color: #1a0dab;">linkedin.com/company/example</a>
        </div>
    </div>
    <% } %>
</div>


<footer class="bg-dark text-white text-center mt-5 p-3">
    &copy; 2025 My Dashboard. All rights reserved.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
