    <!DOCTYPE html>
<%!
    String dni = null;
    String zone = null;
    String price = null;
    String code = null;
%>
<%
    code = (String) request.getAttribute("code");
    dni = (String) request.getAttribute("dni");
    zone = (String) request.getAttribute("zone");
    price = (String) request.getAttribute("price");
%>
<html lang="en">
    <head>
        <title>Formulario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="assets/vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="assets/vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="assets/css/util.css">
        <link rel="stylesheet" type="text/css" href="assets/css/main2.css">
        <script src='https://www.google.com/recaptcha/api.js'></script>
       
        <link rel="stylesheet" type="text/css" href="assets/css/alertify.min.css" />
        <script src="assets/js/alertify.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

         <script src='assets/js/ajax1235.js'></script>
         
    </head>
    <body style="background-color: #666666;">

        <div class="limiter animated bounceInDown">
            <div class="container-login100 ">
                <div class="wrap-login100">
                    <form class="login100-form validate-form" name="form">
                        <span class="login100-form-title p-b-43">
                            Comprar Ticket
                        </span>
                        <div class="wrap-input100 validate-input" data-validate = "Ingrese Codigo">
                            <input class="input100" type="number" name="code" id="code" value="<%=code%>" disabled>
                            <span class="focus-input100"></span>
                            <span class="label-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Ingrese Dni">
                            <input class="input100" type="number" name="dni" id="dni" value="<%=dni%>" disabled>
                            <span class="focus-input100"></span>
                            <span class="label-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Ingrese su Zona">
                            <input class="input100" type="text" name="zone" id="zone" value="<%=zone%>" disabled>
                            <span class="focus-input100"></span>
                            <span class="label-input100"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Ingrese Precio">
                            <input class="input100" type="text" name="precio" id="precio" value="<%=price%>" disabled>
                            <span class="focus-input100"></span>
                            <span class="label-input100"></span>
                        </div>
                       
                        <select name="bank" class="form-control" data-validate="Ingrese Banco" id="bank">
                            <option value="0" selected>--------Tipo Banco--------</option>
                            <option value="1">BCP</option> 
                            <option value="2">BBVA   </option>    
                            <option value="3">INTERBANK   </option> 
                            <option value="4">SCOTIA BANK</option> 
                        </select><br>
                         <select name="posicion1" class="form-control" data-validate="Ingrese Cantidad de Tickets" id="posicion1" onchange="refresh();">
                            <option value="0" selected>--------Cantidad de Entradas--------</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select><br>
                        <div class="wrap-input100 validate-input" data-validate="Ingrese Precio">
                            <input class="input100" type="number" name="pago" id="pago" disabled>
                            <span class="focus-input100"></span>
                            <span class="label-input100">Pago</span>
                        </div>
                        <div class="g-recaptcha" data-sitekey="6LeJNVkUAAAAABj0WuI7JeQcAobxgTgbeidHHzpt"></div>

                        <div class="container-login100-form-btn">
                            <input class="login100-form-btn" type="button" value="Aceptar" onclick="EventAlert('<%=request.getContextPath()%>')">                            
                        </div>
                    </form>
                    <div class="login100-more" style="background-image: url('assets/img/bg/formularioo.jpg');">
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="assets/vendor/animsition/js/animsition.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/vendor/select2/select2.min.js"></script>
        <script src="assets/vendor/daterangepicker/moment.min.js"></script>
        <script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
        <script src="assets/vendor/countdowntime/countdowntime.js"></script>
        <script src="assets/js/main2.js"></script>

    </body>
</html>