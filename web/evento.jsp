<!DOCTYPE html>
<html lang="pt">
    <head> <!--METAS E REFERENCIA CSS-->
        <%@ include file="layout/layoutEvento/head.jsp" %>  
        <title>Semana Jur�dica</title>
        <meta name="description" content="Alguma descri��o da p�gina, �til para aparecer em motores de busca.">
    </head>

    <body id="body">

        <section id="inicio">
            
            <%@ include file="layout/layoutEvento/topo.jsp" %>

            <div class="container">
                <div class="conteudo">
                    <div class="textoBanner">
                        <div>
                            <div style="font-size: 130px">
                                XIII
                            </div>
                            <div style="font-size: 65px">
                                SEMANA<br>
                                JUR�DICA
                            </div>

                            <div style="font-size: 36px;">
                                DE 14 A 16 DE ABRIL<br>
                            </div>

                            <div style="font-size: 20px;">
                                FACULDADE DE TECNOLOGIA E CI�NCIAS - ITABUNA-BA<br>
                            </div>

                            <br>
                            <div> 
                                <button type="button" class="btn bnt-tema">GARANTA SUA VAGA!</button> 
                            </div>    

                        </div>
                    </div> 
                </div>
            </div>
        </section>

        <!--CONTE�DO PRINCIPAL DA P�GINA-->
        <main id="main">  
            <section id="sobre">
                <div class="container">
                    <div id="conteudo">

                        <div class="tilulo-section lado-direito" style="margin-top: 80px">
                            SOBRE O EVENTO
                        </div><br>

                        <p class="text-justify texto-section">                            
                            A Semana Jur�dica trata-se de um evento tradicional do Curso de Direito em sua ?? edi��o realizado pela Faculdade de Tecnologia e Ci�ncias de Itabuna.
                        </p>    
                        <p class="text-justify texto-section">     
                            O evento consiste em um ciclo de palestras e atividades com a finalidade de aprofundar o estudo de temas em destaque no estudo do Direito tanto aos acad�micos quanto a comunidade local e regional.
                        </p>    
                        <p class="text-justify texto-section">      
                            Diversos palestrantes, entre acad�micos e professores desta institui��o, juristas com outras atua��es e at� profissionais de outras �reas, comp�em este evento para discutir os mais relevantes temas da atualidade e suas implica��es para o Direito.
                        </p>   
                        <ul class="text-justify texto-section">    
                            <li>Propiciar a amplia��o do estudo do Direito sob a perspectiva de palestrantes convidados;</li>
                            <li>Estimular a pesquisa por meio de apresenta��o de estudos cient�ficos;</li>
                            <li>Discutir e refletir sobre temas da atualidade e de relev�ncia para a carreira jur�dica.</li>  
                        </ul>   
                    </div>
                </div>  
            </section>


            <section id="fotos">
                <div class="container">
                    <div id="conteudo">
                        <div class="tilulo-section" style="margin-top: 80px">
                            FOTOS
                        </div><br>
                    </div>
                </div>  
            </section>

            <section id="custo">
                <div class="container">
                    <div id="conteudo">
                        <div class="tilulo-section" style="margin-top: 80px">
                            CURSO
                        </div><br>
                    </div>
                </div>  
            </section>


            <section id="palestrantes">
                <div class="container">
                    <div id="conteudo">

                        <div class="tilulo-section lado-direito" style="margin-top: 80px">
                            PALESTRANTES
                        </div><br>


                    </div>
                </div>  
            </section>

            <section id="programacao">
                <div class="container">
                    <div id="conteudo">

                        <div class="tilulo-section lado-direito" style="margin-top: 80px">
                            PROGRAMA��O
                        </div><br>


                    </div>
                </div>  
            </section>

        </main>

        <footer id="rodape">    
            <!--RODAP� DA P�GINA E SCRIPTS-->
            <%@ include file="layout/layoutEvento/rodape.jsp" %>
        </footer>

    </body>
</html>

