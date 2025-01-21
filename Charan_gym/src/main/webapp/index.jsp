<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>

    <style>
        body {
               font-family: Arial, sans-serif;
               margin: 0;
               padding: 0;
               background-color: #f4f4f9; /* Light background color for the entire page */
             }

             header {
               background: #222;
               color: #fff;
               padding: 20px 0;
               display: flex;
               justify-content: space-between;
               align-items: center;
             }

             header .container {
               width: 90%;
               max-width: 1200px;
               display: flex;
               justify-content: space-between;
               align-items: center;
             }

             header .logo img {
             margin-left:28px;
               height: 50px;
             }

             nav {
               flex-grow: 1;
               text-align: center;
             }

             nav ul {
               list-style: none;
               padding: 0;
               margin: 0;
               display: inline-flex;
             }

             nav ul li {
               margin-right: 20px;
             }

             nav ul li a {
               color: #fff;
               text-decoration: none;
             }

             .actions {
               display: flex;
               align-items: center;
               text-decoration: none;
             }

             .actions a, .actions button {
               color: #fff;
               background-color: #f39c12;
               border: none;
               padding: 10px 20px;
               margin-left: 10px;
               cursor: pointer;
               border-radius:40px;
             }

             .video-section {
               position: relative;
               text-align: left;
               padding: 20px 0;
               background-color: #000; /* Dark background for the video section */
             }

             .video-section video {
           width: 100%; /* Make the video take up the full width of the body */
           height: 200px; /* Set the height to 200px */
           object-fit: cover; /* Ensure the video covers the entire area without distorting */
           border-radius: 8px;
       }

             .video-text {
               position: absolute;
               top: 20px;
               left: 20px;
               color: #fff;
               z-index: 2;
               padding-top:40px;

             }

             .video-text h1 {
               font-size: 36px;
               margin: 0;
             }

             .video-text h2 {
               font-size: 24px;
               margin: 10px 0;
             }

             .video-text p {
               font-size: 18px;
               margin: 10px 0;
             }

       .hero {
           background: url('https://img.freepik.com/premium-photo/fitness-lifestyle-woman-holding-jump-rope-black-background-studio-copy-free-space-webbanner_116547-114618.jpg?w=1060') no-repeat center center;
           background-size: cover; /* Ensures the image fills the width and height */
           color: rgb(227, 95, 95);
           padding: 100px 0; /* Adjust padding as needed */
           text-align: center;
           width: 100%; /* Full width */
           height: 150px; /* Maintain aspect ratio */
           position: relative;
       }


             .hero::after {
               content: "";
               position: absolute;
               top: 0;
               left: 0;
               width: 100%;
               height: 100%;
               background: rgba(0, 0, 0, 0.5); /* semi-transparent overlay */
               z-index: 1;
             }

             .hero-text {
               position: relative;
               z-index: 2; /* Ensure text stays above the overlay */
               margin-left:30%;
             }

             .hero h1 {
               font-size: 48px;
               margin: 0;
             }

             .hero h2 {
               font-size: 36px;
               margin: 10px 0;
             }

             .hero p {
               font-size: 18px;
               margin: 20px 0;

             }



             .product-list {
               display: flex;
               justify-content: space-between;
               gap: 20px;
               flex-wrap: nowrap; /* Ensure items stay in a single row */

             }
.products {
    padding: 50px 0;
    text-align: center;
    background: #C6FFDD;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to left, #f7797d, #FBD786, #C6FFDD);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to left, #f7797d, #FBD786, #C6FFDD); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
 /* Light green background for the products container */
  box-shadow: rgba(0, 0, 0, 0.96) 0px 22px 70px 4px;
}

.product-item {
    width: 22%;
    text-align: center;
    margin-bottom: 20px;
  background: #aa4b6b;  /* fallback for old browsers */
  background: -webkit-linear-gradient(to left, #3b8d99, #6b6b83, #aa4b6b);  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to left, #3b8d99, #6b6b83, #aa4b6b); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
   box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.product-item h3 {
    color: #BDBDBC;
}

.product-item p {
    color: #BDBDBC;
     font-family: serif;
     padding:5px;/* Light font color for product descriptions */
}

             .product-item img {
               width: 100%;
               height: auto;
               object-fit: cover;
               border-radius: 8px;
             }

             footer {
               background: #333;
               color: white;
               text-align: center;
               padding: 20px 0;
             }

             .social-media {
               list-style: none;
               padding: 0;
             }

             .social-media li {
               display: inline;
               margin: 0 10px;
             }

             .top-notch-facilities {
               padding: 50px 0;
               text-align: center;
            background: #ADA996;  /* fallback for old browsers */
            background: -webkit-linear-gradient(to left, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996);  /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to left, #EAEAEA, #DBDBDB, #F2F2F2, #ADA996); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

             }

             .top-notch-facilities .facility-list {
               display: flex;
               justify-content: center;
               gap: 20px;
               flex-wrap: wrap;
             }

             .top-notch-facilities .facility-item {
               width: 22%;
               text-align: center;
             }

             .top-notch-facilities .facility-item img {
               width: 100%;
               height: auto;
               object-fit: cover;
               border-radius: 8px;
             }
    </style>
</head>
<body>

    <header>
        <div class="container">
            <a href="#" class="logo">
                <img src="https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=277,h=270,fit=crop/AwvJoE0xx0IZMJ8K/ft_power_gym_logo_file_png-01-Yg2apa87NxI6eQXX.png" alt="Cult.Fit Logo">
            </a>
            <nav>
                <ul>
                    <li><a href="#">FITNESS</a></li>
                    <li><a href="#">SPORTS</a></li>
                    <li><a href="#">CARE</a></li>
                    <li><a href="#">MIND</a></li>
                    <li><a href="#">STORE</a></li>
                </ul>
            </nav>
            <div class="actions">
                <a href="AdminLogin.jsp" style="text-decoration: none;">Admin</a>
                <button class="get-app">User</button>
            </div>
        </div>
    </header>

    <section class="video-section">
        <div class="video-text">
            <h1  style=" color:#B1F4C5;">Join Our Community</h1>
            <h2  style=" color:#C4EFA8;">Get Fit, Stay Healthy</h2>
            <h3 style=" color:#C1EFAC;">Experience the best workouts with our top-notch facilities.</h3>
        </div>
        <video id="gymVideo" autoplay muted loop>
            <source src="https://videos.pexels.com/video-files/5756199/5756199-hd_1920_816_24fps.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </section>

    <section class="hero">
        <div class="container">
            <div class="hero-text">
                <h1>REPUBLIC DAY SALE</h1>
                <h2>60% OFF on cultpass</h2>
                <p>WORKOUT IN GROUP CLASSES, GYMS & AT-HOME</p>
                <button class="try-for-free">TRY FOR FREE</button>
            </div>
        </div>
    </section>

    <section class="products">
        <div class="container">
            <h2>Exclusive Packages</h2>
            <div class="product-list">

                <div class="product-item">
                    <img src="https://img.freepik.com/free-photo/gym-fitness-woman-working-gym-exercises-workout-fit-gym_169016-63231.jpg?t=st=1737456398~exp=1737459998~hmac=8a10aa4f45cc34880d58c1d251f1dfc63b61ea9e75b5fea51fc919f5935dcee9&w=900" alt="Personal Training">
                    <h3>VIP PACK</h3>
                    <p>All ELITE PACK Benefits<br>Unlimited VIP Sessions<br> Access To Special Events</p>
                </div>

                <div class="product-item">
                    <img src="https://img.freepik.com/free-photo/powerful-stylish-bodybuilder-with-tattoo-his-arm-doing-exercises-with-dumbbells-isolated-dark-background_613910-5209.jpg?t=st=1737456019~exp=1737459619~hmac=bfec948134dc4988f7cbae2119272f2614d4ed31dbbfa1974c68bf5eeb0fd00e&w=826" alt="Nutrition Plans">
                    <h3>ELITE PACK</h3>
                    <p>All PRO PACK Benefits<br>Premium Classes<br>Presonal Trainer Sessions</p>
                </div>
                <div class="product-item">
                    <img src="https://img.freepik.com/free-photo/girl-athlete-keeps-disc-from-bar-weighting-agent-doing-crossfit-fitness-concept-sports-equipment-weight-loss_639032-1603.jpg?t=st=1737456918~exp=1737460518~hmac=fad0fbf6c8cc595872eb81e5fdece384f5a4670c7246daeebc26cd95858be338&w=740" alt="Yoga Classes">
                    <h3>PRO PACK</h3>
                    <p>All Basic Benefits<br>Group Fitness Classes<br></p>

                </div>
                 <div class="product-item">
                                   <img src="https://img.freepik.com/premium-photo/determined-strong-fitness-woman-exercising-with-heavy-weights-fitness-club-sportswoman-holdin_78492-7802.jpg?w=900" alt="Cultpass">
                                     <h3>BASIC PACK</h3>
                                    <p>Access to Gym Equipmentgy<br> Personal workout Plan<br>Nutrition Guidance</p>
                                        </div>
            </div>
        </div>
    </section>

    <section class="top-notch-facilities">
        <div class="text-center py-8 bg-gradient-to-b from-black to-purple-900">
            <h1 class="text-4xl font-bold text-white">TOP NOTCH FACILITIES</h1>
        </div>
        <div class="facility-list">
            <div class="facility-item">
                <img src="https://storage.googleapis.com/a1aa/image/2Tl7NNTIQ8YxK1ZxaEJUUtLxNmk0K6PfxdkRcslx9JaWYhDKA.jpg" alt="Gym equipment and facilities">
            </div>
            <div class="facility-item">
                <img src="https://storage.googleapis.com/a1aa/image/vogFFsbtF15iK15fGgNkbBGrk1mZJExU9RZfcXCGnZ5nwCHUA.jpg" alt="People working out in the gym">
            </div>
            <div class="facility-item">
                <img style="height: 100%;" src="https://images.pexels.com/photos/1954524/pexels-photo-1954524.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Group of people in the gym">
            </div>
            <div class="facility-item">
                <img src="https://storage.googleapis.com/a1aa/image/vSxdV45RT4phC5rel4FeuC7ld5RyUe1SuxwGS1wnegBmCLcQB.jpg" alt="Group of people in the gym">
            </div>
        </div>
    </section>




</body>
</html>
