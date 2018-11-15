<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
	<!--
    	OB3DPP
    -->
    <title>Sistemas OB3</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo_misc.css">
    <link rel="stylesheet" href="css/templatemo_style.css">
    <!-- JavaScripts -->   
    <script src="js/jquery-1.11.1.min.js"></script> <!-- lightbox -->
    <script src="js/templatemo_custom.js"></script> <!-- lightbox -->
    <script src="js/jquery.lightbox.js"></script>
    <script src="js/bootstrap-collapse.js"></script> 
    <!-- JavaScripts -->  
</head>
<body>
<div class="templatemo_social"><img src="images/logo.png"></div>
    <div id="templatemo_home" class="templatemo_headerimg"></div>
    <div class="templatemo_headerimg_cover"><img src="images/templatemo_header.png" alt="templatemo header"></div>
    <div class="templatemo_headerwrapper">
        <div class="templatemo_menu">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <!-- Encabezados e imagen de head -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
                    </div>
                    <!-- Creación de Menú y submenus -->
                    <div id="top-menu">
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                            <!-- PONERLE EL NOMBRE DEL REPORTE SEGUN LOS REQUERIMIENTOS -->
                                <li><a class="menu first" href="#templatemo_home"><span>FACTURA BRANDS</span></a></li>
                                       <li><a class="menu first" href="#templatemo_movimiento"><span>NOTAS DE CRÉDITO</span></a></li>
                                <li><a class="menu" href="#templatemo_contact"><span>CONTACTO</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.navbar-collapse --> 
                </div>
                <!-- /.container-fluid --> 
            </nav>
            <!-- logotipo e iconos de acceso rapido --> 
            <div class="templatemo_socialmedia">
            </div>
        </div>
        <div class="clear"></div>
        <div class="container templatemo_wrapper">
            <!-- Primera ventana de inicio, donde vendra la búsqueda -->
            <div class="row">
<!-- TITULO DE OB3 -->
                <div class="col-sm-6">
                    <div class="templatemo_title"><span>SISTEMAS</span>OB3</div>
                    <div class="templatemo_subtitle">4E BRANDS</div>
                </div>
<!-- NOMBRES Y TEXTO DEL REPORTE O SISTEMA -->
                <div class="col-sm-6 templatemo_home">
                <!-- CAMBIAR POR EL NOMBRE DEL REPORTE -->
                    <div class="templatemo_headertitle">FACTURA BRANDS</div>
                    <div class="clear"></div>
                    <div class="templatemmo_subheader">INSTRUCCIONES:</div>
                    <div class="clear"></div>
                    <!-- PONER LAS INSTRUCCIONES DEL SISTEMA -->
                    <div class="templatemo_hometext">
                        <p>Ingresa el número de documento de Factura 
                        </p>
                    </div>
                    <div class="clear"></div>
                    <div class="clear"></div>
<!-- FORMULARIO:
	NOTA. SE DEBERA MODIFICAR LAS ENTRADAS Y FILTROS DE BUSQUEDA SEGUN LOS REQUERIMIENTOS SOLICITADOS
 -->
			 <div class="col-md-4 templatemo_contactform">
                    <form action="Green" target = "_blank">
			  <input type="hidden" name="reportID" value="1">	
<!--                       	<input type="text" name="name" id="name" class="name" placeholder="VALOR A BUSCAR" required="required"> -->

<!-- 						<input type="file"> -->
						<table>
                        	<tr>
                        		<td>No. de Folio</td> 
					<td><input type="text" required = "required" id="FOLIO_REM" name="FOLIO_REM"></td> 	

								<!-- <td><input type="date" name="ingreso" required="required"></td> -->
			           	   </tr>
                       	   <tr>
                       		 	<!--<td>FECHA FINAL</td>
								<td><input type="date" name="fin" required="required"></td> -->
                       		 </tr>
                        </table>
                        <table>
                        	<tr>
                        		<td><button type="submit"  class="btn btn-primary">CREAR</button></td>
                        		<td>....</td>
                        		<td><button type="reset" class="btn btn-primary">LIMPIAR</button></td>
                      	    </tr>
                        </table>
                  	</form>
         <!-- FIN DE FORMULARIO -->
                </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <div class="templatemo_separater">
                        <span class="page">1</span>
                    </div>
                </div>
            </div>
            <!-- FIN DE LA PRIMERA VENTANA -->
                    <!-- SEGUNDA ventana -->
        <div class="clear"></div>
        <div class="container templatemo_wrapper">
            <!-- Primera ventana de inicio, donde vendra la búsqueda -->
            <div class="row">
<!-- NOMBRES Y TEXTO DEL REPORTE O SISTEMA -->
                <div class="col-sm-6 " id="templatemo_movimiento">
                <!-- CAMBIAR POR EL NOMBRE DEL REPORTE -->
                    <div class="templatemo_headertitle">NOTAS DE CRÉDITO</div>
                    <div class="clear"></div>
                    <div class="templatemmo_subheader">INSTRUCCIONES:</div>
                    <div class="clear"></div>
                    <!-- PONER LAS INSTRUCCIONES DEL SISTEMA -->
                    <div class="templatemo_hometext">
                        <p>Indique el número de documento
                        </p>
                    </div>
                    <div class="clear"></div>
                    <div class="clear"></div>
<!-- FORMULARIO:
	NOTA. SE DEBERA MODIFICAR LAS ENTRADAS Y FILTROS DE BUSQUEDA SEGUN LOS REQUERIMIENTOS SOLICITADOS
 -->
			 <div class="col-md-4 templatemo_contactform">
                    <form action="Nc" target="_blank">
                    <input type="hidden" name="reportID" value="1">	
<!--                       	<input type="text" name="name" id="name" class="name" placeholder="VALOR A BUSCAR" required="required"> -->
<!-- 						<input type="file"> -->
						<tr>
                        		<td>No.</td>                         		
								<td><input type="text" id="FOLIO_REM" name="FOLIO_REM" ></td>
                		</tr>
                		   <tr>
						   <td><br></td>
						   </tr>
						   <table>        		           	
                        	<tr>
                        		<td><button type="submit"  class="btn btn-primary">CREAR</button></td>
                        		<td style="width: 200px;"></td>
                        		<td><button type="reset" class="btn btn-primary">LIMPIAR</button></td>
                      	    </tr>
                      	    </table>
                  	</form>
         <!-- FIN DE FORMULARIO -->
                </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <div class="templatemo_separater">
                        <span class="page">2</span>
                    </div>
                </div>
            </div>
            <!-- FIN DE LA SEGUNDA VENTANA -->   
               
        </div>
        <!-- INICIO DE CONTACTO O SEGUNDO MENU --> 
        <div id="templatemo_service" class="container">
            <div class="row">

            <!-- CONTENEDOR -->
<!--             INICIA VENTANA CONTACTO -->
            <div id="templatemo_contact" class="row templatemo_contact">
<!--                 <div class="col-md-12"> -->
<!--                 TITULOS Y TEXTO -->
<!--                     <div class="templatemo_contacttitle">CONTACTO</div> -->
<!--                     <div class="templatemo_sub_contacttitle">FAVOR DE INGRESAR LOS DATOS CORRESPONDIENTES</div> -->
<!--                 </div> -->
<!--                 FORMULARIO DE ENVIO DE OBSERVACIONES Y COMENTARIOS -->
<!--                 <div class="col-md-4 templatemo_contactform"> -->
<!--                     <form action="#" method="post"> -->
<!--                       	<input type="text" name="name" id="name" class="name" placeholder="NOMBRE" required="required"> -->
<!--                       	<input type="email" name="email" id="email" class="email" placeholder="EMAIL" required="required"> -->
<!--                         <input type="text" name="subject" id="subject" class="subject" placeholder="ASUNTO"> -->
<!--                         <textarea name="message" class="message" placeholder="MENSAJE ... " id="message" required="required"></textarea> -->
<!--                         <div class="clear"></div> -->
<!--                         <button type="submit" class="btn btn-primary">ENVIAR</button> -->
<!--                   	</form> -->
<!--                 FIN DE FORMULARIO -->
<!--                 </div> -->
<!--                 CONTACTOS -->
   			<div class="col-sm-6 templatemo_home">
                   <div class="templatemmo_subheader">CONTACTOS:</div>
                   <div class="templatemo_hometext">
                      
                        <p>JOVANI FARIAS LOPEZ: Tel: 30678025 EXT. 8025
                        <br>
			   CORREO: jfarias@4emexico.com
			<br>
                        </p>
                    </div>
                </div>
            </div>
            <!-- PIE DE PAGINA -->
              <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-6">
                    <div class="templatemo_separater">
                        <span class="page">2</span>
                    </div>
                </div>
            </div>
            <!-- contact end -->
        </div>
        <div class="templatemo_footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                    	Copyright &copy; Sistemas OB3 / / <a href="http://4emexico.com/web/">4e Brands</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>