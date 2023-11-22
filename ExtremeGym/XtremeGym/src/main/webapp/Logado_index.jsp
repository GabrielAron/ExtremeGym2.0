<!DOCTYPE html>
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <title>Document</title>


    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="telaGaleria/imagens.css">
    <link rel="stylesheet" href="telaAvaliacoes/Avaliacoes.css">
    <link rel="stylesheet" href="telaServicos/Serviços.css">
    <link rel="stylesheet" href="telaFaleConosco/Fale.css">
    <link rel="stylesheet" href="telaSocial/Social.css">
    <link rel="stylesheet" href="telaSobre/QuemSomos.css">
    <link rel="stylesheet" href="telaServicos/Servico.css">
</head>
<div id="HeaderEBackground">
    <header id="headers">
        <meta charset="UTF-8">
        <title>Dashboard</title>
        <div id="Header1">
            <div class="Header_lista">
                <div class="Flex">
                    <div id="Logo_Academia">
                        <img src="../imagens/LogoXtremeGYM.png" alt="Logo XtremeGym">
                    </div>
                    <ul>
<!--                        <li><a class="hover-1" href="#interface">Inicio</a></li>-->
                        <li><a class="hover-1" href="#Quemsomos">Sobre</a></li>
                        <li><a class="hover-1" href="#Serviços_academia">Serviços</a></li>
                        <li><a class="hover-1" href="#ImagensGaleria">Galeria</a></li>
                        <li><a class="hover-1" href="#Avaliacoes_Clientes">Avaliações</a></li>
                        <li><a class="hover-1" href="#Recursos">Recursos</a></li>
                        <li><a class="hover-1" href="#Fale conosco">Fale conosco</a></li>
                        <li><a class="hover-1" href="/Sortear-Treino">Treinos</a></li>
                    </ul>
                    <div id="Perfil">
                        <i id="iconeperfil" class="bi bi-person-circle"></i>
                        <c:if test="${sessionScope.loggedUser != null}">
                            <span>${sessionScope.loggedUser}</span>
                            <a href="/logout">Logout</a>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <body>
    <div id="interface">
        <section>
            <div>

                <div id="container">
                    <img src="imagens/academia_xtreme.jpg" id="imagemBackgroud" alt="Background">
                    <div id="XtremeGymCentral">
                        <h1>XtremeGym</h1>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div id="Quemsomos">
                <h2>Quem Somos</h2>
                <div id="Quem_somos_texto">

                    Somos os melhores no nosso segmento, e é tudo graças
                    aos relacionamentos incríveis que formamos com nossos clientes.
                    Ao contrário dos nossos concorrentes, somos dedicados ao
                    desenvolvimento de uma conexão pessoal com cada um dos nossos clientes.
                    Para isso, prestamos serviços de qualidade e estamos à disposição 24 horas
                    por dia, 7 dias por semana. Entre em contato conosco quando estiver pronto
                    para saber mais. Teremos o prazer de conhecê-lo!

                </div>

            </div>
        </section>
        <section>
            <div>
<!--                <h2 id="NossosSeriços">Nossos Serviços</h2>-->
            </div>
            <div id="Serviços_academia">

                <figure>
                    <img src="../imagens/PlanoEssential.PNG" id="imgServicoE">


                    <figcaption class="titulosPlanos"> Plano Essential</figcaption>
                    <div class="textoPlanos">
                        <figcaption>Benefícios:
                            Acesso total às instalações da academia, incluindo equipamentos de musculação e cardio.
                            Participação em aulas em grupo regulares, como yoga, zumba e spinning.
                            Acesso a vestiários e chuveiros.
                        </figcaption>
                    </div>
                </figure>
                <figure>
                    <img src="../imagens/PlanoPlus.PNG" id="imgServicoPlus">
                    <figcaption class="titulosPlanos">Plano Plus</figcaption>
                    <div class="textoPlanos">
                        <figcaption>Benefícios:
                            Todos os benefícios do Plano Essential.
                            Acesso ilimitado a aulas especiais, como treinamento funcional e pilates.
                            Acompanhamento personalizado de um instrutor para auxiliar no estabelecimento de metas e
                            monitoramento
                            do
                            progresso.
                            Acesso a serviços de nutrição e orientação dietética.
                        </figcaption>
                    </div>
                </figure>
                <figure>
                    <img src="../imagens/PlanoPremium.PNG" id="imgServicoPremium">
                    <figcaption class="titulosPlanos">Plano Premium</figcaption>
                    <div class="textoPlanos">
                        <figcaption>Benefícios:
                            Todos os benefícios do Plano Plus.
                            Acesso exclusivo a áreas VIP da academia, com equipamentos premium e ambiente mais
                            privativo.
                            Aulas exclusivas em grupos reduzidos, com treinadores especializados.
                            Acesso a serviços de massagem e relaxamento.
                            Acompanhamento com nutricionista
                        </figcaption>
                    </div>
                </figure>
            </div>
        </section>
        <section>
            <div id="ImagensGaleria">
                <!--                <h1>Galeria</h1>-->
                <div id="image-gallery" class="container">
                    <div class="box box-1"
                         style="--img: url(https://www.rocfit.com/wp-content/uploads/Equipos-de-musculacion-para-entrenamiento-de-tren-inferior.jpg);"
                         data-text="Área de musculação"></div>
                    <div class="box box-2"
                         style="--img: url(https://pulsefit.bg/uploads/cache/original/public/uploads/media-manager/app-modules-zones-models-zone/4/1148/867A5930.jpg);"
                         data-text="Área de cardio"></div>
                    <div class="box box-3"
                         style="--img: url(https://media.istockphoto.com/id/827324092/pt/foto/interior-of-finnish-sauna-classic-wooden-sauna.jpg?s=612x612&w=0&k=20&c=Ym5AoqcEE0hQRFFJ5jGhz3I3nIVjM_IDeYf77Jc6xas=);"
                         data-text="Sauna"></div>
                    <div class="box box-4"
                         style="--img: url(https://www.timecentrodeportivo.com/wp-content/uploads/2016/11/Captura-de-pantalla-2019-12-05-a-las-8.49.01.png);"
                         data-text="Estúdio"></div>
                    <div class="box box-5"
                         style="--img: url(https://blog.nextfit.com.br/wp-content/uploads/2023/05/como-projetar-vestiario-academia.png);"
                         data-text="Vestiarios "></div>
                </div>
            </div>
        </section>
        <div>
            <div id="Avaliacoes_Clientes">
<!--                <h2 id="avaliacao">Avaliações dos Clientes</h2>-->
                <section class="cards">
                    <div class="card">
                        <img class="image_card" src="../telaAvaliacoes/ramo.jpg">
                        <h3>Thomas Turbano</h3>
                        <div class="stars">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                        </div>
                        <p class="card_text">
                            A academia oferece equipamentos modernos, instalações bem conservadas e instrutores
                            simpáticos.As aulas em grupo são variadas e a atmosfera é acolhedora.Recomendada para quem
                            busca um ambiente acolhedor com excelentes recursos.
                        </p>
                    </div>

                    <div class="card">
                        <img class="image_card" src="https://th.bing.com/th/id/OIP.mXSEydrEw3KYce7X72uCzQHaJL?pid=ImgDet&rs=1">
                        <h3>Julio Junior</h3>
                        <div class="stars">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                        </div>
                        <p class="card_text">
                            A academia tem uma equipe receptiva,equipamentos de primeira linha e uma ampla variedade de
                            opções.Os instrutores são altamente qualificado
                            e o ambiente é limpo e organizado. Recomendada para quem busca qualidade e um ambiente
                            amigável.
                        </p>
                    </div>
                    <div class="card">
                        <img class="image_card" src="https://i.ytimg.com/vi/4cXM-fDl5ec/maxresdefault.jpg">
                        <h3>Paula Tejano Pinto Souza</h3>
                        <div class="stars">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                        </div>
                        <p class="card_text">
                            A academia oferece instrutores atenciosos,equipamentos modernos e uma variedade de aulas.A
                            atmosfera é energética e motivadora.
                            Recomendada para quem busca uma experiência
                            de condicionamento físico excepcional.
                        </p>
                    </div>
                    <div class="card">
                        <img  class="image_card" src="https://www.greatestphysiques.com/wp-content/uploads/2019/04/Renato-Cariani.06.jpg">
                        <h3>Jacinto Pinto Aquino Rego</h3>
                        <div class="stars">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                            <img src="../telaAvaliacoes/estrela%20(2).png">
                        </div>
                        <p class="card_text">
                            A academia possui funcionários profissionais,equipamentos de última geração e uma variedade
                            de opções de treinamento. As aulas em grupo são divertidas e desafiadoras.As instalações são
                            limpas e bem organizadas. Recomendada para quem busca um ambiente acolhedor e recursos de
                            alta qualidade.
                        </p>
                    </div>
                </section>


            </div>
        </div>
        <section id="TodosRecursos">
            <div id="Recursos">
                <figure>
                    <i class="bi bi-emoji-laughing"></i>
                    <h4>Melhor qualidade</h4>
                    <div>
                        Garantimos sua total
                        Satisfação
                    </div>
                </figure>
                <figure>

                    <i class="bi bi-clock"></i>
                    <h4>Suporte 24/7</h4>
                    <div>
                        Nosso suporte por telefone está sempre
                        à sua disposição
                    </div>
                </figure>
                <figure>
                    <i class="bi bi-house"></i>
                    <h4>Preços competitivos</h4>
                    <div>
                        O melhor custo-benefício
                    </div>
                </figure>
                <figure>
                    <i class="bi bi-heart-pulse"></i>
                    <h4>Parceria nutritiva</h4>
                    <div>
                        Nossos nutricionistas parceiros
                        ficaram felizes em te ajudar, cajo seja o caso.
                    </div>
                </figure>

            </div>
        </section>

        <section id="Footer">
            <div id="Fale conosco">
                <h2>Fale conosco</h2>
                <div>
                    Estamos disponíveis para ajudar! Envie-nos quaisquer perguntas que você tiver.
                    Esperamos receber notícias suas.
                </div>
                <div id="CamposdePreenchimento_FaleConosco">
                    <input type="text" name="input" placeholder="Nome"/>
                    <input type="text" name="input" placeholder="Email"/>
                    <input type="number" name="input" placeholder="Telefone"/>
                    <input type="text" name="input" placeholder="Mensagem"/>
                </div>
                <div id="BotaodeEnviar_FaleConosco">
                    <button>Enviar</button>

                    <div id="Social">
                        <h2>Social</h2>
                        <div class="social-icons">
                            <a class="social-icon social-icon--github" href="https://github.com/Filriber/ExtremeGym">
                                <i class="bi bi-github"></i>
                                <div class="tooltip">Github</div>
                            </a>
                            <a class="social-icon social-icon--twitter">
                                <i class="bi bi-twitter"></i>
                                <div class="tooltip">Twitter</div>
                            </a>
                            <a class="social-icon social-icon--instagram">
                                <i class="bi bi-instagram"></i>
                                <div class="tooltip">Instagram</div>
                            </a>
                            <a class="social-icon social-icon--linkedin">
                                <i class="bi bi-linkedin"></i>
                                <div class="tooltip">LinkedIn</div>
                            </a>
                            <a class="social-icon social-icon--facebook">
                                <i class="bi bi-facebook"></i>
                                <div class="tooltip">Facebook</div>
                            </a>
                        </div>
                    </div>
        </section>

        </form>
    </div>

    </body>
</html>