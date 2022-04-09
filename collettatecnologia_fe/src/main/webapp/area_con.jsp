<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="collettatecnologia_fe.clientes" %>
<%@ page import="collettatecnologia_fe.ConectaDB" %>

<%
String cnpj_c = request.getParameter("cnpj");
cnpj_c = cnpj_c.replaceAll("\\.","");
cnpj_c = cnpj_c.replaceAll("\\-","");
cnpj_c = cnpj_c.replaceAll("\\/","");
cnpj_c = cnpj_c.trim();
String pass_c = request.getParameter("pass");

clientes clienteClass = new clientes();
ConectaDB   bd  = new ConectaDB();
Connection conn = bd.Conectar();

String sql = "SELECT * FROM clientes where cnpj like '%"+cnpj_c+"%' and pass like '%"+pass_c+"%'";

Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(sql);

%>   

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    
    <title>Colletta Technology</title>
    <link rel="icon" type="image/png" sizes="20X20"  href="img/logo.png"> 

    <!-- Acrescentar bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

     <!-- Acrescentar chamada para arquivo CSS -->
     <link rel="stylesheet" type="text/css" href="css/style.css"  > 

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

    <section class="container">        
            
            <div class="grid_colletta">        
                <div class="box menu">
                    <span>Area Cliente</span>
                    <span></span>
                </div>       
            </div>
            <div class="grid_paginas">
             <% 
                if (!rs.next()) {
                	System.out.println("nao retornou");
                %>
				      <div class="dados_pessoais"> 
	                        <tr>
	                          <td> <h5> PROJETOS CLEINTE </h5> </td>
	                      
	                         </tr>
                       </div>
				       <div class="dados_pessoais_1">
                       <table border="2"> 
                          <tr>
                            <th colspan="7"> </th>  
                          </tr>
                
                       <tr>
				         <td>CLIENTE NAO CADASTRADO </td>	
				         
				       </tr>
                 		</table>
					</div>

                <%
                	
                } else {
                	
                	
                	   
                 	while(rs.next())
					{
                	
                	
                 %>    
              
                   
                <div class="dados_pessoais"> 
	                <tr>
	                    <td> <h5> 
	                    <%="PROJETOS CLEINTE " + rs.getString("razao_social")  %> </h5> </td>
	                    <!-- <td></td> -->
	                </tr>
                </div>

                 <% } %>                
                 
                   
                      
                
                       <div class="dados_pessoais_1">
                       <table border="2"> 
                          <tr>
                            <th colspan="7"> </th>  
                       </tr>
                
                       <tr>
				         <td>ID PROJETO </td>	
				         <td>PROJETO</td>
				         <td>INCICO</td>
				         <td>TERMINO</td>
				         <td>STATUS</td>
				       </tr>
                
   			 		   <tr>
						   <td> 202201 </td>
						   <td> IMPLANTACAO PROTHEUS 12 </td>
						   <td> 02/01/2022</td>
						   <td> 30/10/2022</td>
						   <td> 30%</td>
					   </tr> 
					   
					   <tr>
						   <td> 202202 </td>
						   <td> APLICATIVO APONTAMENTO DE ORDEM DE SERVIÇOS </td>
						   <td> 02/02/2022</td>
						   <td> 30/09/2022</td>
						   <td> 40%</td>
					   </tr>  
					</table>
					</div>
					<%  };
						 conn.close();
					%>
	            
	  	    
            
           </div>
            

            <div class="box rodape">
                <footer>
                    <p> Copyright &copy; 2022 Colletta Technology <br>
                    <!-- <a href="./_media/PolíticadePrivacidade.pdf" target="blank">Política de Privacidade</a> -->
                    </p>
                </footer>
            </div>

        </section>
    
</body>
</html>