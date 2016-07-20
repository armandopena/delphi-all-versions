# Delphi Projects
<html>

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=Generator content="Microsoft Word 15 (filtered)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoTitle, li.MsoTitle, div.MsoTitle
	{mso-style-link:"Título Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
p.MsoTitleCxSpFirst, li.MsoTitleCxSpFirst, div.MsoTitleCxSpFirst
	{mso-style-link:"Título Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
p.MsoTitleCxSpMiddle, li.MsoTitleCxSpMiddle, div.MsoTitleCxSpMiddle
	{mso-style-link:"Título Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
p.MsoTitleCxSpLast, li.MsoTitleCxSpLast, div.MsoTitleCxSpLast
	{mso-style-link:"Título Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
a:link, span.MsoHyperlink
	{color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:#954F72;
	text-decoration:underline;}
span.TtuloChar
	{mso-style-name:"Título Char";
	mso-style-link:Título;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
.MsoChpDefault
	{font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:595.3pt 841.9pt;
	margin:70.85pt 63.7pt 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
-->
</style>

</head>

<body lang=PT-BR link="#0563C1" vlink="#954F72">

<div class=WordSection1>

<p class=MsoTitle><b>Aplicação MDI</b></p>

<p class=MsoNormal style='text-indent:21.3pt'>Este projeto para abrir uma
imagem dentro de uma janela principal e pode ver visualizada, contém duas
funções NORMAL onde carrega a imagem em seu tamanho original, ou distorcer onde
ajusta o tamanho da imagem para o tamanho da janela.</p>

<p class=MsoNormal>&nbsp;</p>

<p class=MsoTitle><b>Contador Dinheiro<b></p>

<p class=MsoNormal style='text-indent:21.3pt'>Este projeto é um contador de cédulas
para um determinado valor em reais, ele converte o valor inserido na caixa de texto
para as notas referentes.</p>

<p class=MsoNormal>&nbsp;</p>

<p class=MsoTitle><b>Conversões DateTime</b></p>

<p class=MsoNormal style='text-indent:21.3pt'>Este é um simples mais funcional
projeto onde mostra uma data (combo) e hora (caixa de edição) e converte estes
valores para o formato numérico decimal (onde a parte inteira é a hora e a
parte decimal os minutos e segundos). </p>

<p class=MsoNormal style='text-indent:21.3pt'>Os valores ao selecionar a caixa
do formato (botões de seleção) este são enviados para a área de transferência.</p>

<p class=MsoNormal style='text-indent:21.3pt'>Utilizo muito esta ferramenta
para enviar os valores rapidamente para o banco de dados quando estou
desenvolvendo algo novo.</p>

<p class=MsoNormal>&nbsp;</p>

<p class=MsoTitle><b>Drag Drop</b></p>

<p class=MsoNormal style='text-indent:21.3pt'>Este é um exemplo do uso do drag
drop de um controle para outro do próprio formulário em edição. É possível
arrastar do próprio Windows Explorer um arquivo de texto para o programa que
ele também realiza a leitura.</p>

<p class=MsoNormal style='text-indent:21.3pt'>O usuário pode arrastar mais de
um arquivo que o mesmo é carregado em um conjunto de tabuladores (TabControl).</p>

<p class=MsoNormal style='text-indent:21.3pt'>Para usar navegue pelas pastas no
menu lateral com a lista de diretórios procurando um arquivo de texto (*.txt),
ao selecionar uma pasta com este arquivo ele é mostrado a abaixo em uma seleção
de arquivo, clique nele e arraste para dentro do editor a esquerda, ele é
aberto dentro para visualização. </p>

<p class=MsoNormal style='text-indent:21.3pt'>O destaque deste projeto é usar
os eventos DragDrop, DragOver, EndDrag onde temos os recursos de arrastar e
soltar, pouco utilizado nas aplicações em geral.</p>

<p class=MsoTitle><b>Portas Abertas</b></p>

<p class=MsoNormal style='text-indent:21.3pt'>Este projeto monitora as portas
especificadas no número do IP e mostra todas as que estão abertas, durante o
processamento iniciado (botão iniciar) vai monitorando e adicionando as portas,
exibe um progresso e é possível interromper o processamento a qualquer momento
parando o procedimento (botão parar). Utiliza o TCPClient para conectar em cada
porta do computador.</p>

<p class=MsoTitle><b>Jogo de Imagens</b></p>

<p class=MsoNormal style='text-indent:21.3pt'>Este projeto possui quatro
imagens dentro de painéis na parte superior e três na parte inferior, ao clicar
em cada imagem as imagens são mandas para baixo (se estiver na parte superior)
ou para cima (se estiver na parte inferior). Quando todas as imagens da parte inferior
são preenchidas e, ao tentar mandar mais uma imagem para baixo é exibida uma
mensagem para o usuário de erro informando que todas as imagens já foram
enviadas para baixo. E necessário ao usuário retirar uma imagem da parte
inferior para continuar.</p>

<p class=MsoNormal style='text-indent:21.3pt'>O detalhe mais importante deste
projeto é seu algoritmo que utiliza a referência das próprias imagens (objeto
TImage) para vincular em uma lista (objeto TList) de objetos. Toda a
inteligência esta independente dentro de uma classe separada do formulário
principal.</p>

<p class=MsoNormal>&nbsp;</p>

<p class=MsoNormal>&nbsp;</p>

<p class=MsoNormal>&nbsp;</p>


</div>

</body>

</html>
