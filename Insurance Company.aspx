<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insurance Company.aspx.cs" Inherits="Road_Accident_Investigation.Insurance_Company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css"/>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/insurance.css"/>
    <title>Sri Lankan Insurance Companies Page</title>

</head>

<body>
    <!--header-->
    <header>

        <nav class="container navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.itml">Insurance company</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class=" container collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About Us</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="#">Insuarance Planes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact Us</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Choices
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Personal Insurance</a></li>
                                <li><a class="dropdown-item" href="#">Business Insurance</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Other</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>

        <div class="container header-content w-md-50 w-100">

            <img src="images/c1.png" alt="Insuarance image" style="margin-right: 1400px; margin-top: 100px;"/>
            <div class="content" style="margin-right: 1400px;width: 100%; margin-top: 100px;">
                <h2>Welcome to ABC Insuarance company</h2>
                <p>Sequre your life with us </p>
            </div>
        </div>


    </header>

    <!--header end-->

    <!--about-->

    <div class="section container-fluid about" id="about">

        <div class="row">

            <div class="col-md-4 col-12">
                <img src="images/22.jpg" alt="insuarance abou">
            </div>

            <div class="col-md-8 col-12">

                <div class="content">
                    <h2>Welcome to Sri Lanka's most trusted Insuarance company</h2>
                    <p>At ABC we offer you the finest Personal and Business Insurance</p>
                </div>

                <div class="skills">
                    <h4><span>About us</span></h4>

                    <div class="single-skill">
                        <span>Life insuarance</span>
                        <div class="custom-progress">
                            <div class="progress-bar" style="width: 100%;"></div>
                        </div>
                    </div>

                    <div class="single-skill">
                        <span>Vehical insuarance</span>
                        <div class="custom-progress">
                            <div class="progress-bar" style="width: 80%;"></div>
                        </div>
                    </div>

                    <div class="single-skill">
                        <span>Business insuarance</span>
                        <div class="custom-progress">
                            <div class="progress-bar" style="width: 70%;"></div>
                        </div>
                    </div>

                    <div class="single-skill">
                        <span>Other insuarance</span>
                        <div class="custom-progress">
                            <div class="progress-bar" style="width: 75%;"></div>
                        </div>
                    </div>




                </div>

                <div class="about-buttons">
                    <a href="#contact">Contact Us</a>
                    <a href="#">Buy online</a>
                </div>


            </div>

        </div>



    </div>

    <!--about end-->


    <!--Service-->

    <div class="section services" id="services">

        <div class="content">
            <div class="container">
                <h2>Services</h2>
                <div class="row">

                    <div class="col-md-4 col-12">
                        <div class="single-service">
                            <i class="fa fa-magic" aria-hidden="true"></i>
                            <h4>Life Insuarance</h4>
                            <p> You can choise your life insurance for a afordable price. when you are join with us we care about your health and other things and also your family will have benifits
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 col-12">
                        <div class="single-service">
                            <i class="fa fa-magic" aria-hidden="true"></i>
                            <h4>Vehicle Insuarance</h4>
                            <p>wether it is a car, bike, van don't worry our policy for vehicle insurance prepare to suit the vehicle you drive. You only pay for your needs
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 col-12">
                        <div class="single-service">
                            <i class="fa fa-magic" aria-hidden="true"></i>
                            <h4>Other Insuarance</h4>
                            <p>Travel insuarance, Home insurance, Motor insurance etc. you can explore the world stronger
                            </p>
                        </div>
                    </div>


                </div>
            </div>
        </div>


    </div>



    <!--Service end-->


    <!--gallery-->

    <div class="section gallery container" id="gallery">

        <h2>Gallery</h2>
        <p>Plan your future with the right insurance</p>

        <div class="row images">

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g1.jpeg" alt="Gallery"></div>
            </div>

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g2.jpg" alt="Gallery"></div>
            </div>

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g3.jpeg" alt="Gallery"></div>
            </div>

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g4.jpg" alt="Gallery"></div>
            </div>

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g5.jpeg" alt="Gallery"></div>
            </div>

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g6.jpg" alt="Gallery"></div>
            </div>

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g7.jpeg" alt="Gallery"></div>
            </div>

            <div class="imgBox col-md-4 col-12">
                <div><img src="images/g8.jpg" alt="Gallery"></div>
            </div>


        </div>
    </div>

    <!--gallery end-->


    <!--Life history-->

    <div class="section life-history" id="life">
        <div class="container">
            <div class="row">

                <div class="'col-lg-6 col-12">
                    <h2>Insuarances</h2>

                    <div class="life-single">
                        
                        <h2>Life Insuarance</h2>
                        <p><span><a href="">Take a look</a></span></p>
                    </div>

                    <div class="life-single">
                       
                        <h2>Home Insuarance</h2>
                        <p><span><a href="">Take a look</a></span></p>
                    </div>

                    <div class="life-single">
                        
                        <h2>Motor Insuarance</h2>
                       <form runat="server"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Accident Details</asp:LinkButton></form>
                        <p><span><a href="">Take a look</a></span></p>
                    </div>


                </div>


                <div class="'col-lg-6 col-12">
                    

                    <div class="life-single">
                        
                        <h2>Travel Insuarance</h2>
                        <p><span><a href="">Take a look</a></span></p>
                    </div>

                    <div class="life-single">
                        
                        <h2>Propert Insuarance</h2>
                        <p><span><a href="">Take a look</a></span></p>
                    </div>

                    <div class="life-single">
                       
                        <h2>Bite size Insuarance</h2>
                        <p><span><a href="">Take a look</a></span></p>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <!--Life history end-->

    <!--testimonials-->

    <!--
    <div class="section testimonials container" id="testimonials">
        <h2>Testimonials</h2>

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>

            </ol>

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-md-4 col-12">
                            <div class="testimonials-single">
                                <div class="imgBox">
                                    <img src="images/c1.jpg" alt="Mr.www">
                                </div>
                                <div class="content">
                                    <h4>Mr.www</h4>
                                    <p class="occupation">Photographer</p>
                                    <div class="text">
                                        <p>lorum ipsum vdhbbuds bvhyrnhf vbhffnvhvbhsd vbbvdsshfurhn vbhvfyej</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-12">
                            <div class="testimonials-single">
                                <div class="imgBox">
                                    <img src="images/c1.jpg" alt="Mr.www">
                                </div>
                                <div class="content">
                                    <h4>Mr.www</h4>
                                    <p class="occupation">Photographer</p>
                                    <div class="text">
                                        <p>lorum ipsum vdhbbuds bvhyrnhf vbhffnvhvbhsd vbbvdsshfurhn vbhvfyej</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-12">
                            <div class="testimonials-single">
                                <div class="imgBox">
                                    <img src="images/c1.jpg" alt="Mr.www">
                                </div>
                                <div class="content">
                                    <h4>Mr.www</h4>
                                    <p class="occupation">Photographer</p>
                                    <div class="text">
                                        <p>lorum ipsum vdhbbuds bvhyrnhf vbhffnvhvbhsd vbbvdsshfurhn vbhvfyej</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-4 col-12">
                            <div class="testimonials-single">
                                <div class="imgBox">
                                    <img src="images/c1.jpg" alt="Mr.www">
                                </div>
                                <div class="content">
                                    <h4>Mr.www</h4>
                                    <p class="occupation">Photographer</p>
                                    <div class="text">
                                        <p>lorum ipsum vdhbbuds bvhyrnhf vbhffnvhvbhsd vbbvdsshfurhn vbhvfyej</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-12">
                            <div class="testimonials-single">
                                <div class="imgBox">
                                    <img src="images/c1.jpg" alt="Mr.www">
                                </div>
                                <div class="content">
                                    <h4>Mr.www</h4>
                                    <p class="occupation">Photographer</p>
                                    <div class="text">
                                        <p>lorum ipsum vdhbbuds bvhyrnhf vbhffnvhvbhsd vbbvdsshfurhn vbhvfyej</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-12">
                            <div class="testimonials-single">
                                <div class="imgBox">
                                    <img src="images/c1.jpg" alt="Mr.www">
                                </div>
                                <div class="content">
                                    <h4>Mr.www</h4>
                                    <p class="occupation">Photographer</p>
                                    <div class="text">
                                        <p>orum ipsum vdhbbuds bvhyrnhf vbhffnvhvbhsd vbbvdsshfurhn vbhvfyej</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

-->
    <!--testimonials end-->

    <!--contact us-->
    <style>
        .form-group {
            margin-bottom: -100px;
        }
    </style>

    <div class="section contact" id="contact">
        <div class="container" style="height: 500px;">
            <h2 style="margin-right: 700px;">Contact Us</h2>
            <div class="row">
                <div class="col-lg-6 col-12">
                    <form>
                        <div class="form-group">
                            <input type="text" id="name" required placeholder="Enter your Name" style="height: 50px;">
                        </div>
                        <div class="form-group">
                            <input type="text" id="subject" required placeholder="Enter your Subject"
                                style="height: 50px;">
                        </div>
                        <div class="form-group">
                            <input type="email" id="email" required placeholder="Enter your Email"
                                style="height: 50px;">
                        </div>

                        <div class="form-group text-area">
                            <textarea id="message" required placeholder="Enter message"></textarea>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-outline-success" style="margin-top: 110px;">Send contact
                                message</button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6 col-12">
                    <div class="content">
                        <ul>
                            <li><a href="#"><i class="fa fa-map-marker"></i>No 12, Colombo 7</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i>insuarance@example.com</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>0771234556</li>
                            <li><a href="#"><i class="fa fa-info"></i>Download</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!--contact us end-->


    <!--footer-->



    <!-- <footer>
            <div class="section container footer">

                <div class="footer-social">

                    <ul>
                        <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>

                </div>
                <div class="divider"></div>
                <div class="footer-bottom">
                    <p>@ 2022 ABC insuarance comapny. All right reserved | Sri Lanka</p>
                </div>
            </div>
        </footer> -->

    <!--footer end-->





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
</body>
</html>
