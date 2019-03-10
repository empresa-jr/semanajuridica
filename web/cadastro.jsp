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
                                    <h4 class="card-title mt-2 text-center">Cadastro de Usuário</h4>
                                </header>
                                <article class="card-body">
                                    <!--PEGA OS VALORES DOS CAMPOS DO FORMULÁRIO(get) E ENVIA PARA O SERVELET "validar_cadastro.jsp" -->
                                    <form id="cadastro" method="post" action="validar_cadastro" oninput='csenha.setCustomValidity(csenha.value != senha.value ? "Senhas não coincidem!" : "")'>
                                        <!--=================================-->
                                        <div class="form-row">
                                            <div class="col-md-10 form-group">
                                                <label>Nome: </label>   
                                                <input name="nome" type="text" class="form-control col" minlength="2" autocomplete='off' placeholder="" required>
                                            </div> 

                                            <div class="col-md-14 form-group">
                                                <label>Sobrenome: </label>
                                                <input name="sobrenome" type="text" class="form-control col" minlength="2"  autocomplete='off' placeholder="" required>
                                            </div> 

                                        </div> 
                                        <!--=================================-->
                                        <div class="form-row">

                                            <div class="col-md-7 form-group">
                                                <label>D. Nasc.:</label>
                                                <input name="dnasc" class="form-control" type="date" id="dnasc" placeholder="" autocomplete='off' required >
                                            </div>

                                            <div class="col-md-9 form-group">
                                                <label>Sexo: </label><br> 
                                                <div class="btn-group btn-group-toggle col" style="padding-left: 0px; padding-right: 0px " data-toggle="buttons">
                                                    <label class="btn btn-outline-dark">
                                                        <input type="radio" name="sexo" value="M" required>Masculino
                                                    </label>                                          
                                                    <label class="btn btn-outline-dark">
                                                        <input type="radio" name="sexo" value="F" required>Feminino  
                                                    </label>                                                    
                                                </div>
                                            </div> 

                                            <div class="col-md-8 form-group">
                                                <label>CPF: </label>   
                                                <input name="cpf" type="text" class="form-control" autocomplete='off' placeholder=""  minlength="14"  maxlength="14" required onkeypress="formatarCpf('###.###.###-##', this);">
                                            </div> 

                                        </div> 

                                        <!--=================================-->

                                        <div class="form-group">
                                            <label>E-mail:</label>
                                            <input type="email" class="form-control" minlength="7" autocomplete="off" placeholder="" required>
                                            <small class="form-text text-muted">Insira um email válido, será necessário para a confirmação da conta.</small>
                                        </div>

                                        <!--=================================-->

                                        <div class="form-row">
                                            <div class="col-md form-group">
                                                <label>Criar senha</label>
                                                <input name="senha" value="" minlength="6" class="form-control" autocomplete="off" type="password" required>
                                            </div> 
                                            <div class="col-md form-group">
                                                <label>Confirmar senha</label>
                                                <input name="csenha" value="" class="form-control" autocomplete="off" type="password" required>
                                            </div>
                                        </div> 

                                        <button class="btn btn-lg btn-primary btn-block btn-dark" type="submit">Cadastrar</button>

                                    </form>
                                </article>
                                <div class="border-top card-body text-center">Já tem uma conta? <a href="login.jsp" class="text-dark">Clique aqui para entrar</a></div>
                            </div> 
                        </div> 
                    </div>

                </div>
            </div>

        </main>

        <!--RODAPÉ DA PÁGINA E SCRIPTS-->
        <footer id="rodape">                
            <%@ include file="layout/layoutPainelDeControle/rodape.jsp" %>

            <!--MÁSCARA CPF-->
            <script src="recursos/js/cpf.js"></script>

        </footer>

    </body>
</html>

