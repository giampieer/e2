function refresh(){
  var precio,posicion1;
  precio = document.form.precio.value; 
  posicion1 = document.getElementById('posicion1').value;
   if( posicion1 == '0' ){
        alertify.error("Ingresar Cantidad de tickets")
    } else {
        if( posicion1 == '1') {
            precio = precio * 1;
        } else {
            if ( posicion1 == '2'){
                precio = precio * 2;
            }
        }
    }
    document.getElementById('pago').value = precio;
}
function  EventAlert(ruta){
    var bank,rutatotal, dni,posicion1,pago,nombank,abrev,zona,code;
    posicion1=document.getElementById('posicion1').value;
    bank=document.getElementById('bank').value;
    zona=document.getElementById('zone').value;
    code=document.getElementById('code').value;
    pago=document.form.pago.value;
    dni=document.form.dni.value;
     var response = grecaptcha.getResponse();
    if(bank=='0'){
      alertify.error("SELECCIONAR BANCO");
    document.form.bank.focus();
    return ;
    } else {
        if (bank == '1'){
        nombank == "bcp"; 
        abrev = "BCP"
    }else {
        if(bank == '2'){
            nombank == "bbva"; 
            abrev = "BBA"
        }else{
            if(bank == '3') {
                nombank == "interbank"; 
                abrev = "INT"
            }else{
                nombank == "scotia bank"; 
                abrev = "SCO";
              }
          }
      }
    }
    if( pago == '' ){
      alertify.error("SELECCIONAR CANTIDAD DE BOLETAS");
      document.form.posicion1.focus();
      return ;
  }else{
      if (response.length == '0') {
          alertify.error("Captcha no verificado");
          document.form.posicion1.focus();
          return ;
      } else{
      var f = new Date();
      var fecha = f.getDate() + "" + (f.getMonth() +1) + "" + f.getFullYear();
      var correlativo =abrev+" - "+code+" - "+fecha;
            alert (ruta+"/PaymentController?op=3&zona="+zona+"&pago="+pago+"&dni="+dni+"&correlativo="+correlativo+"&bank="+bank)

      alert("TU NUMERO AUTOGENERADO ES : \n"+ abrev+" - "+code+" - "+fecha)
      rutatotal =ruta+"/PaymentController?op=3&zona="+zona+"&pago="+pago+"&dni="+dni+"&correlativo="+correlativo+"&bank="+bank;
      document.form.action=rutatotal;
      document.form.method="POST";  
      swal("Compra Realizada !", "El pago sera reaizado en el banco seleccionado", "success");
      alertify.success('Compra Realizada !!');
      document.form.submit();
  }
}}
function Message() {
        swal("Peru vs Escocia ", "Ventas de entradas");
    }
