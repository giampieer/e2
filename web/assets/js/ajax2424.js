function refresh(){
  var precio,posicion1;
  precio = document.form.precio.value; 
  posicion1 = document.getElementById('posicion1').value;
   if( posicion1 == '0' ){
        alert("Ingresar Cnatidad de tickets")
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
    var bank,rutatotal, dni,posicion1,pago,nombank,abrev,zona;
    posicion1=document.getElementById('posicion1').value;
    bank=document.getElementById('bank').value;
    zona=document.getElementById('zone').value;
    pago=document.form.pago.value;
    dni=document.form.dni.value;
    if(bank=='0'){
      alert("SELECCIONAR BANCO");
    document.form.txtseleccion.focus();
    return ;
    }
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
      if(posicion1=='0'){
      alert("SELECCIONAR CANTIDAD DE BOLETAS");
      document.form.txtseleccion.focus();
      return ;
  }else{
      var f = new Date();
      var fecha = f.getDate() + "" + (f.getMonth() +1) + "" + f.getFullYear();
      var correlativo =abrev+" - 000001 - "+fecha;
      alert("TU NUMERO AUTOGENERADO ES : \n"+ abrev+"-000001-"+fecha)
      rutatotal =ruta+"/PaymentController?op=3&zona="+zona+"&pago="+pago+"&dni="+dni+"&correlativo="+correlativo;
      document.form.action=rutatotal;
      document.form.method="POST";
      document.form.submit();
  }
}
