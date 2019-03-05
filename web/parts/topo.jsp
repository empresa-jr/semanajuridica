<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head></head>
    <body>

        <!--BARRA DA EMPRESA JR-->
        <div id="barratopo">
            <div class="container clearfix" style="padding-right:15px;padding-left:15px">
                <div class=" float-left">
                    <img class="noselect" src="recursos/img/empresajr.png" height="20" style="pointer-events: none;" />
                </div>
                <!--BARRA DE LINKS REDES SOCIAIS DA EMPRESA JR-->
                <div id="redes-sociais-empresa-jr" style="float: right">
                    <a target="_blank" href='https://pt-br.facebook.com/sistechftc/'><i class="fab fa-facebook-square rede-sociais"></i></a>
                </div>
            </div>
        </div>


        <!--BARRA DO MENU PRICIPAL E DA LOGO DO SITE-->
        <div id="barramenu"> 
            <div class="container clearfix">                
                <nav class="navbar navbar-expand-lg navbar-light menu-customizado">                                      

                    <%
                        //TRATAMENTO DE CORREÇÃO DE LINKS, CASO SEJA UTILIZADO EM OUTRAS PÁGINAS (TALVEZ NÃO PRECISE)                        

                        String inicio = "inicio.jsp";

                        if (request.getServletPath().equals("/inicio.jsp")) {
                            inicio = "#inicio";
                        }
                    %>

                    <!--APESAR DO ERRO, ESSA VARIÁVEL "tema" EXISTE EM head.jsp QUE SERÁ CARREGADA JUNTO EM TODA PÁGINA-->
                    <a href="<%=inicio%>"><img class="noselect" src="recursos/tema/<%=tema%>/img/logo.png" height="50" style="pointer-events: none;" /></a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#menuMobile" aria-controls="menuMobile" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars" style="font-size:30px"></i>
                    </button>

                    <div id="menuMobile" class="navbar-collapse collapse">      
                        <ul class="navbar-nav ml-auto">

                            <li class="nav-item">
                                <a class="nav-link" href="#inicio">Início</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#sobre">Sobre</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#fotos">Fotos</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#custo">Custo</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#palestrantes">Palestrantes</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#programacao">Programação</a>
                            </li>

                        </ul>                        
                    </div>
                </nav>
            </div>
        </div>

    </body>
</html>
