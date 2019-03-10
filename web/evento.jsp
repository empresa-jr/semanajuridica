<!DOCTYPE html>
<html lang="pt">
    <head> <!--METAS E REFERENCIA CSS-->
        <%@ include file="layout/layoutEvento/head.jsp" %>  
        <title>Semana Jurídica</title>
        <meta name="description" content="Alguma descrição da página, útil para aparecer em motores de busca.">
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
                                JURÍDICA
                            </div>

                            <div style="font-size: 36px;">
                                DE 14 A 16 DE ABRIL<br>
                            </div>

                            <div style="font-size: 20px;">
                                FACULDADE DE TECNOLOGIA E CIÊNCIAS - ITABUNA-BA<br>
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

        <!--CONTEÚDO PRINCIPAL DA PÁGINA-->
        <main id="main">  
            <section id="sobre">
                <div class="container">
                    <div id="conteudo">

                        <div class="tilulo-section lado-direito" style="margin-top: 80px">
                            SOBRE O EVENTO
                        </div><br>

                        <p class="text-justify texto-section">                            
                            A Semana Jurídica trata-se de um evento tradicional do Curso de Direito em sua ?? edição realizado pela Faculdade de Tecnologia e Ciências de Itabuna.
                        </p>    
                        <p class="text-justify texto-section">     
                            O evento consiste em um ciclo de palestras e atividades com a finalidade de aprofundar o estudo de temas em destaque no estudo do Direito tanto aos acadêmicos quanto a comunidade local e regional.
                        </p>    
                        <p class="text-justify texto-section">      
                            Diversos palestrantes, entre acadêmicos e professores desta instituição, juristas com outras atuações e até profissionais de outras áreas, compõem este evento para discutir os mais relevantes temas da atualidade e suas implicações para o Direito.
                        </p>   
                        <ul class="text-justify texto-section">    
                            <li>Propiciar a ampliação do estudo do Direito sob a perspectiva de palestrantes convidados;</li>
                            <li>Estimular a pesquisa por meio de apresentação de estudos científicos;</li>
                            <li>Discutir e refletir sobre temas da atualidade e de relevância para a carreira jurídica.</li>  
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
                            PROGRAMAÇÃO
                        </div><br>


                    </div>
                </div>  
            </section>

        </main>

        <footer id="rodape">    
            <!--RODAPÉ DA PÁGINA E SCRIPTS-->
            <%@ include file="layout/layoutEvento/rodape.jsp" %>
        </footer>

    </body>
</html>

