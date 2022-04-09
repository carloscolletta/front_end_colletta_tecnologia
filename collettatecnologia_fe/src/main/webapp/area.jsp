<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    
    <title>Colletta Technology</title>
    <link rel="icon" type="image/png" sizes="20X20"  href="./img/logo.png">

    <!-- Acrescentar bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="js/validar.js"></script>
    
     <script src="js/validar.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
   
    
    <script type="text/javascript">
		$(document).ready(function(){	
			$("#cnpj").mask("99.999.999/9999-99");
		})
	</script>


     <!-- Acrescentar chamada para arquivo CSS -->
     <link rel="stylesheet" type="text/css" href="./css/style.css"> 

     <!-- Fontes Google -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@1,700&display=swap" rel="stylesheet">

     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300&display=swap" rel="stylesheet">


    </head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-info">

        <a class="navbar-brand" href="./index.jsp"><img src="./img/logo.png" class="logo"></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Alterna navegaÃ§Ã£o">
          <span class="navbar-toggler-icon bg-info"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

            <li class="nav-item active">
                <a class="nav-link" href="./index.jsp" target="blank" class="paginas">Home<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="./metodologia.jsp" target="blank" class="paginas">Metodologia<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
                <a class="nav-link" href="./solucoes.jsp"" target="blank" class="paginas">SoluÃ§Ãµes<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="./artigos.jsp"" target="blank" class="paginas">Artigos<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>
        
            <li class="nav-item active">
              <a class="nav-link" href="./cases.jsp"" target="blank" class="paginas">Cases<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="./area.jsp""" target="blank" class="paginas">Area Cliente<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="./contato.jsp"" target="blank" class="paginas">Contato<span class="sr-only">(PÃ¡gina atual)</span></a>
            </li>

          </ul>

        </div>
    </nav>

    <form name="form_cliente" id="form_cliente" action="area_con.jsp" form="POST" >

        <section class="container">        
            
            <div class="grid_colletta">        
                <div class="box menu">
                    <span>Area Cliente</span>
                    <span></span>
                </div>       
            </div>
            
            
            <div class="grid_paginas"> 
                <div class="dados_pessoais"> 
                <tr>
                    <td> <h5> Dados Acesso </h5> </td>
                    <!-- <td></td> -->
                </tr>
                </div>

                <div class="dados_pessoais_1">
        
                    <table>
                        <tr>
                            <td>
                                <label for="nome">  CNPJ :</label>
                            </td>
                            <td>
                                <input type="text" name="cnpj" id="cnpj" size="18" class="entrada" > 
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <label for="pass">Password :</label> 
                            </td>

                            <td>
                                <input type="password" name="pass" id="pass" class="entrada" > 
                            </td>

                           
                        </tr> 

                        <tr>

                             <!-- Botes de login ------------------------------------------------- -->

                           <td >
                                <button type="submit" id="login" class="btn btn-info btn-sm" onclick="return validar_area();">Login</button>
                           </td>
                        </tr> 


                            
                    </table>

                </div>
                
                
               
            
            </div>

            

            <div class="box rodape">
                <footer>
                    <p> Copyright &copy; 2022 Colletta Technology <br>
                    <!-- <a href="./_media/PoliÌticadePrivacidade.pdf" target="blank">PolÃ­tica de Privacidade</a> -->
                    </p>
                </footer>
            </div>

        </section>
    </form>
</body>


<!-- Carregando bibliotecas para o bootstrap -->

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
  


</html>