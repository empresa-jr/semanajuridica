<!DOCTYPE html>
<html lang="pt">
    <head><!--METAS E REFERENCIA CSS-->       
        <%@ include file="layout/layoutPainelDeControle/head.jsp" %>  
        <title>Login</title>
        <meta name="description" content="Alguma descrição da página, útil para aparecer em motores de busca.">        

    </head>
    <body id="body">

        <header id="topo">
            <%@ include file="layout/layoutPainelDeControle/topo.jsp" %> 
        </header>

        <!--CONTEÚDO PRINCIPAL DA PÁGINA-->
        <main id="main"> 

            <div class="container"> 
                <div id="conteudo">
                    <div class="row justify-content-center">
                        <div class="col-lg-16">
                            <div class="card">
                                <header class="card-header">
                                    <h4 class="card-title mt-2 text-center">Efetuar Login</h4>
                                </header>
                                <article class="card-body">
                                    <!--PEGA OS VALORES DOS CAMPOS DO FORMULÁRIO(get) E ENVIA PARA O SERVELET "validar_cadastro.jsp" -->
                                    <form id="login" method="post" action="validar_login">
                                        <!--=================================-->
                                        
                                        <div class="form-group">
                                            <label>E-mail:</label>
                                            <input type="email" class="form-control" minlength="7" autocomplete="off" placeholder="" required>
                                        </div>

                                        <!--=================================-->

                                        <div class="form-row">                                            
                                            <div class="col-md form-group">
                                                <label>Senha</label>
                                                <input name="senha" value="" class="form-control" autocomplete="off" type="password" required>
                                            </div>                                            
                                        </div> 

                                        <button class="btn btn-lg btn-primary btn-block btn-dark" type="submit">Entrar</button>

                                    </form>
                                </article>
                                <div class="border-top card-body text-center">Ainda não é cadastrado? <a href="cadastro.jsp" class="text-dark">Clique aqui para criar uma conta!</a></div>
                            </div> 
                        </div> 
                    </div>

                </div>
            </div>

        </main>

        <!--RODAPÉ DA PÁGINA E SCRIPTS-->
        <footer id="rodape">                
            <%@ include file="layout/layoutPainelDeControle/rodape.jsp" %>
        </footer>

    </body>
</html>

