<%-- 
    Document   : index
    Created on : 14/05/2018, 01:34:47 PM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- ========== Meta Tags ========== -->
        <meta charset="UTF-8">
        <meta name="description" content="Evento -Event Html Template">
        <meta name="keywords" content="Evento , Event , Html, Template">
        <meta name="author" content="ColorLib">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- ========== Title ========== -->
        <title> Encuentro Peru - Escocia </title>
        <!-- ========== Favicon Ico ========== -->
        <!--<link rel="icon" href="fav.ico">-->
        <!-- ========== STYLESHEETS ========== -->
        <!-- Bootstrap CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- Fonts Icon CSS -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/css/et-line.css" rel="stylesheet">
        <link href="assets/css/ionicons.min.css" rel="stylesheet">
        <!-- Carousel CSS -->
        <link href="assets/css/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/css/owl.theme.default.min.css" rel="stylesheet">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <!-- Custom styles for this template -->
        <link href="assets/css/main.css" rel="stylesheet">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
         <script src='assets/js/ajax1235.js'></script>
    </head>
    <body onload="Message()">
        <div class="loader">
            <div class="loader-outter"></div>
            <div class="loader-inner"></div>
        </div>

        <!--header start here -->
        <header class="header navbar fixed-top navbar-expand-md">
            <div class="container">
                <a class="navbar-brand logo" href="#">
                    <img src="assets/img/fpf.png" alt="Evento"/>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#headernav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="lnr lnr-text-align-right"></span>
                </button>
                <div class="collapse navbar-collapse flex-sm-row-reverse" id="headernav">
                    <ul class=" nav navbar-nav menu">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#equipo">Equipo Peruano</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#proximo">Al Mundial</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#precios">Tickets</a>
                        </li>
                        <li class="search_btn">
                            <a  href="#">
                                <i class="ion-ios-search"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>
        <!--header end here-->

        <!--cover section slider -->
        <section id="home" class="home-cover">
            <div class="cover_slider owl-carousel owl-theme">
                <div class="cover_item" style="background-image: url('assets/img/port1.jpg');">
                    <div class="slider_content">
                        <div class="slider-content-inner">
                            <div class="container">
                                <div class="slider-content-center">
                                    <h2 class="cover-title">
                                        Preparate para el Partido
                                    </h2>
                                    <strong class="cover-xl-text">Amistoso</strong>
                                    <p class="cover-date">
                                        PERÚ - ESCOCIA
                                    </p>
                                    <a href="#precios" class=" btn btn-primary btn-rounded" >
                                        Venta de Tickets
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cover_item" style="background-image: url('assets/img/port2.jpg');">
                    <div class="slider_content">
                        <div class="slider-content-inner">
                            <div class="container">
                                <div class="slider-content-left">
                                    <h2 class="cover-title">
                                        Preparate para el Partido
                                    </h2>
                                    <strong class="cover-xl-text">Amistoso</strong>
                                    <p class="cover-date">
                                        PERÚ - ESCOCIA
                                    </p>
                                    <a href="#precios" class=" btn btn-primary btn-rounded" >
                                        Venta de Tickets
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cover_item" style="background-image: url('assets/img/port3.jpg');">
                    <div class="slider_content">
                        <div class="slider-content-inner">
                            <div class="container">
                                <div class="slider-content-center">
                                    <h2 class="cover-title">
                                        Rumbo al Mundial
                                    </h2>
                                    <strong class="cover-xl-text">RUSIA 2018</strong>
                                    <p class="cover-date">
                                        Proximos Partidos
                                    </p>
                                    <a href="#proximo" class=" btn btn-primary btn-rounded" >
                                        Informacion
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cover_nav">
                <ul class="cover_dots">
                    <li class="active" data="0"><span>1</span></li>
                    <li  data="1"><span>2</span></li>
                    <li  data="2"><span>3</span></li>
                </ul>
            </div>
        </section>
        <!--cover section slider end -->

        <!--event info -->
        <section class="pt100 pb100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-6 col-md-3  ">
                        <div class="icon_box_two">
                            <i class="ion-ios-calendar-outline"></i>
                            <div class="content">
                                <h5 class="box_title">
                                    Fecha
                                </h5>
                                <p>
                                    28 Mayo 2018
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 col-md-3  ">
                        <div class="icon_box_two">
                            <i class="ion-ios-location-outline"></i>
                            <div class="content">
                                <h5 class="box_title">
                                    localización
                                </h5>
                                <p>
                                    Estadio Nacional, Peru.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--event info end -->


        <!--event countdown -->
        <section class="bg-img pt70 pb70" style="background-image: url('assets/img/bg/bg-img.png');">
            <div class="overlay_dark"></div>
            <div class="container">
                <div>
                    <h1 style="text-align: center; color: #fff">
                        #ArribaPerú
                    </h1>
                </div>
                <div style="text-align: center; color: #fff; font-size: 2em">
                    <img src="assets/img/fpf1.png" alt="Evento" style="height: 130px; width: 100px" />
                    VS
                    <img src="assets/img/Escocia1.PNG" alt="Evento" style="height: 130px; width: 120px" />
                </div>

            </div>
        </section>
        <!--event count down end-->


        <!--about the event -->
        <section class="pt100 pb100">
            <div class="container">
                <div class="section_title">
                    <h3 class="title">
                        Resumen Del Partido
                    </h3>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12 col-md-6">
                        <p>
                            El dia 28 de mayo del 2018 peru se enfrentara en un partido amistoso contra escocia, esto mostrara el talento y capacidades que tienen nuestro jugadores de la seleccion.
                        </p>
                    </div>
                    <div class="col-12 col-md-6">
                        <p>
                            Acercandose ya a los partidos Mundialistas en donde despues de 36 años el Perú tendra cita en Rusia 2018.
                        </p>
                    </div>
                </div>

                <!--event features-->
                <div class="row justify-content-center mt30">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="icon_box_one">
                            <i class="lnr lnr-mic"></i>
                            <div class="content">
                                <h4>Comentaristas</h4>
                                <p>
                                    GONZALO NUÑEZ
                                    ERICK OSORES
                                    EDDIE FLEISCHMAN
                                    PHILLIP BUTTERS
                                    ALBERTO BEINGOLEA
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="icon_box_one">
                            <i class="lnr lnr-rocket"></i>
                            <div class="content">
                                <h4>Viaje a Rusia 2018</h4>
                                <p>
                                    Luego del Amistoso de Perú vs Escocia. Nuestra Selección ira rumbo a Rusia a disputar unos de los primeros
                                    lugares en la lista del Mundial.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="icon_box_one">
                            <i class="lnr lnr-bullhorn"></i>
                            <div class="content">
                                <h4>Transmición del Partido TV</h4>
                                <p>
                                    Frecuencia Latina - Canal 2
                                    America Televisión - Canal 4 
                                    Panamericana Tele. - Canal 5                           
                                    ATV - Canal 9                          
                                </p>                        
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="icon_box_one">
                            <i class="lnr lnr-clock"></i>
                            <div class="content">
                                <h4>Horas del Partido Rusia 2018</h4>
                                <p>
                                    Perú - Dinamarca Hr.11:00
                                    Francia - Perú Hr. 7:00
                                    Australia - Perú Hr. 9:00
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--event features end-->
            </div>
        </section>
        <!--about the event end -->


        <!--speaker section-->
        <section class="pb100" id="equipo">
            <div class="container">
                <div class="section_title mb50">
                    <h3 class="title">
                        Equipo Peruano
                    </h3>
                </div>
            </div>
            <div class="row justify-content-center no-gutters">
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/paolo.jpg" alt="speaker name" >
                            <div class="info_box">
                                <h5 class="name">Paolo Guerrero</h5>
                                <p class="position">N° 9</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/flores.png" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Edison Flores</h5>
                                <p class="position">N° 20</p>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/aldo.jpeg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Aldo Corzo</h5>
                                <p class="position">N° 3</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/christian.jpeg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Christian Cueva</h5>
                                <p class="position">N° 8</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/luis.jpg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Luis Advincula</h5>
                                <p class="position">N° 17</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/raul.jpg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Raul Ruidiaz</h5>
                                <p class="position">N° 11</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/jefferson.jpg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Jefferson Farfan</h5>
                                <p class="position">N° 10</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/ChristianRamos.jpg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Christian Ramos</h5>
                                <p class="position">N° 15</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/trauco.jpg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Miguel Trauco</h5>
                                <p class="position">N° 6</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/renato.jpeg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Renato Tapia</h5>
                                <p class="position">N° 13</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/pedro.jpg" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Pedro Gallese</h5>
                                <p class="position">N° 1</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="speaker_box">
                        <div class="speaker_img">
                            <img src="assets/img/speakers/ricardo.png" alt="speaker name">
                            <div class="info_box">
                                <h5 class="name">Ricardo Gareca</h5>
                                <p class="position">DT</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--speaker section end -->

        <!--Price section-->
        <section class="pb100" id="precios">
            <div class="container">
                <div class="section_title mb50">
                    <h3 class="title">
                        Precio de Palcos
                    </h3>
                </div>

                <div class="row justify-content-center">
                    <div class="col-md-3 col-12">
                        <div class="price_box active">
                            <div class="price_header">
                                <h4>
                                    Zona Norte
                                </h4>
                            </div>
                            <div class="price_tag">
                                <sup>S/.</sup>100
                            </div>
                            <div class="price_features">
                                <ul>
                                    <li>
                                        Maximo 2 entradas por persona
                                    </li>
                                </ul>
                            </div>
                            <div class="price_footer">
                                <a href="<%=request.getContextPath()%>/PaymentController?op=1&zone=Norte&price=100" class="btn btn-rounded btn-primary" >Comprar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-12">
                        <div class="price_box active">
                            <div class="price_header">
                                <h4>
                                    Zona Sur
                                </h4>
                            </div>
                            <div class="price_tag">
                                <sup>S/.</sup>100
                            </div>
                            <div class="price_features">
                                <ul>
                                    <li>
                                        Maximo 2 entradas por persona
                                    </li>
                                </ul>
                            </div>
                            <div class="price_footer">
                                <a href="<%=request.getContextPath()%>/PaymentController?op=1&zone=Sur&price=100" class="btn btn-rounded btn-primary" >Comprar</a>
                                <%--<script>
                                    function EventoAlert() {
                                        swal("Ingrese su DNI:", {
                                            content: "input",
                                        });
                                    }
                                </script>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-12">
                        <div class="price_box active">
                            <div class="price_header">
                                <h4>
                                    Zona Oriente
                                </h4>
                            </div>
                            <div class="price_tag">
                                <sup>S/.</sup>200
                            </div>
                            <div class="price_features">
                                <ul>
                                    <li>
                                        Maximo 2 entradas por persona
                                    </li>
                                </ul>
                            </div>
                            <div class="price_footer">
                                <a href="<%=request.getContextPath()%>/PaymentController?op=1&zone=Oriente&price=200" class="btn btn-rounded btn-primary" >Comprar</a>
                                <%--<script>
                                    function EventoAlert() {
                                        swal("Ingrese su DNI:", {
                                            content: "input",
                                        });
                                    }
                                </script>--%>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-12">
                        <div class="price_box active">
                            <div class="price_highlight">
                                Recomendado
                            </div>
                            <div class="price_header">
                                <h4>
                                    Zona Occidente
                                </h4>
                            </div>
                            <div class="price_tag">
                                <sup>S/.</sup>400
                            </div>
                            <div class="price_features">
                                <ul>
                                    <li>
                                        Maximo 2 entradas por persona
                                    </li>
                                </ul>
                            </div>
                            <div class="form-group text-right">
                                <a href="<%=request.getContextPath()%>/PaymentController?op=1&zone=Occidente&price=400" class="btn btn-rounded btn-primary" >Comprar</a>
                                <%--<script>
                                    function EventoAlert() {
                                        swal("Ingrese su DNI:", {
                                            content: "input",
                                        });
                                    }
                                </script>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--price section end -->

        <!--event calender-->
        <section class="pb100" id="proximo">
            <div class="container">
                <div class="table-responsive">
                    <table class="event_calender table">
                        <thead class="event_title">
                            <tr>
                                <th>
                                    <i class="ion-ios-calendar-outline"></i>
                                    <span>Partidos de Perú en el Mundial</span>
                                </th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <img src="assets/img/cleander/primero.jpeg" alt="event">
                                </td>
                                <td class="event_date">
                                    16
                                    <span>Junio</span>
                                </td>
                                <td>
                                    <div class="event_place">
                                        <h5>Peru - Dinamarca</h5>
                                        <h6> 11 a.m.</h6>
                                        <p>Estadio Saransk</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="assets/img/cleander/segundo.jpeg" alt="event">
                                </td>
                                <td class="event_date">
                                    21
                                    <span>Junio</span>
                                </td>
                                <td>
                                    <div class="event_place">
                                        <h5>Francia - Perú</h5>
                                        <h6>7 a.m.</h6>
                                        <p>Estadio Ekaterimburgo</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="assets/img/cleander/tercero.jpeg" alt="event">
                                </td>
                                <td class="event_date">
                                    26
                                    <span>Junio</span>
                                </td>
                                <td>
                                    <div class="event_place">
                                        <h5>Australia - Perú</h5>
                                        <h6>9 a.m.</h6>
                                        <p>Estadio Sochi</p>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!--event calender end -->


        <div class="copyright_footer">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-12">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos Los Derechos Reservados|VrammDev
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                    <div class="col-12 col-md-6 ">
                        <ul class="footer_menu">
                            <li>
                                <a href="#">Home</a>
                            </li>
                            <li>
                                <a href="#equipo">Equipo Peruano</a>
                            </li>
                            <li>
                                <a href="#proximo">Al Mundial</a>
                            </li>
                            <li>
                                <a href="#precios">Tickets</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--footer end -->

        <!-- jquery -->
        <script src="assets/js/jquery.min.js"></script>
        <!-- bootstrap -->
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <!--slick carousel -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!--parallax -->
        <script src="assets/js/parallax.min.js"></script>
        <!--Counter up -->
        <script src="assets/js/jquery.counterup.min.js"></script>
        <!--Counter down -->
        <script src="assets/js/jquery.countdown.min.js"></script>
        <!-- WOW JS -->
        <script src="assets/js/wow.min.js"></script>
        <!-- Custom js -->
        <script src="assets/js/main.js"></script>
    </body>
</html>
