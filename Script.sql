create database commentsAnalysis
use commentsAnalysis

create table clientes (

	id BigInt NOT NULL PRIMARY KEY,
	nome varchar(40) NOT NULL

)

create table comentarios (

	id BigInt NOT NULL PRIMARY KEY,
	idCliente BigInt NOT NULL,	
	idProduto BigInt NOT NULL,
	conteudo varchar(100) NOT NULL,
	FOREIGN KEY (idCliente) REFERENCES clientes(id),
	FOREIGN KEY (idProduto) REFERENCES produtos(id)

)


create table produtos (

	id BigInt NOT NULL PRIMARY KEY,
	nome varchar(40) NOT NULL,
	
)

INSERT INTO clientes (id, nome) VALUES
(1, 'João Silva'),
(2, 'Maria Oliveira'),
(3, 'Carlos Souza'),
(4, 'Ana Costa');

INSERT INTO produtos (id, nome) VALUES
(1, 'Notebook Dell'),
(2, 'Celular Samsung Galaxy'),	
(3, 'Smart TV LG'),
(4, 'Fone de Ouvido JBL');

select * from comentarios

INSERT INTO comentarios (id, idCliente, idProduto, conteudo) VALUES
(1, 1, 2, 'Ótimo celular, com bom custo-benefício.'),
(2, 2, 3, 'A TV tem uma ótima qualidade de imagem.'), 
(3, 3, 1, 'O notebook é rápido e eficiente.'),
(4, 4, 4, 'Adorei o som dos fones de ouvido.');

INSERT INTO comentarios (id, idCliente, idProduto, conteudo) VALUES
(5, 1, 3, 'A TV tem uma boa relação custo-benefício.'),
(6, 2, 1, 'O notebook é bom, mas a bateria poderia durar mais.'),
(7, 3, 4, 'Os fones de ouvido têm um ótimo cancelamento de ruído.'),
(8, 4, 2, 'O celular é ótimo, mas achei a câmera mediana.'),
(9, 1, 4, 'Muito confortável para usar por longas horas.'),
(10, 3, 2, 'O celular é rápido e não trava, muito satisfeito.'),
(11, 2, 4, 'Fones excelentes para ouvir música no dia a dia.'),
(12, 4, 3, 'TV com excelente resolução, recomendo para filmes.'),
(13, 1, 1, 'O notebook é perfeito para trabalho e estudos.'),
(14, 3, 3, 'A qualidade do som da TV é impressionante.');

INSERT INTO comentarios (id, idCliente, idProduto, conteudo) VALUES
(15, 2, 1, 'Desempenho excelente para uso diário, mas a tela não é tão brilhante quanto eu gostaria.'),
(16, 3, 1, 'Teclado confortável, mas a bateria dura menos do que o esperado.'),
(17, 4, 1, 'Ideal para estudos, porém esquenta bastante quando usado por muito tempo.'),
(18, 1, 1, 'Design elegante, mas achei o material do acabamento um pouco frágil.'),
(19, 2, 1, 'Processador rápido, mas o notebook é um pouco pesado para carregar.'),
(20, 3, 1, 'Cumpre bem o que promete, mas a webcam tem baixa qualidade.'),
(21, 4, 1, 'Roda bem os aplicativos de escritório, mas o HD é um pouco lento.'),
(22, 1, 1, 'Ótimo custo-benefício, mas o som não é dos melhores.'),
(23, 2, 1, 'Esquenta um pouco durante uso intenso, principalmente ao editar vídeos.'),
(24, 3, 1, 'Leve e fácil de transportar, mas a qualidade da tela não é tão boa em ambientes externos.'),
(25, 4, 1, 'HD poderia ser mais rápido, e o carregador é muito grande.'),
(26, 1, 1, 'Tela tem boa resolução, mas o brilho não é suficiente para uso em áreas iluminadas.'),
(27, 3, 1, 'O som é claro, mas o volume máximo é baixo.'),
(28, 4, 1, 'A configuração inicial é fácil, mas veio com alguns programas desnecessários pré-instalados.'),
(29, 2, 1, 'A conexão com a internet é estável, mas a placa de rede não suporta velocidades mais altas.');

INSERT INTO comentarios (id, idCliente, idProduto, conteudo) VALUES
(30, 1, 2, 'A câmera é boa em ambientes iluminados, mas deixa a desejar em locais escuros.'),
(31, 3, 2, 'Bateria dura o dia inteiro com uso moderado, mas demora bastante para carregar totalmente.'),
(32, 4, 2, 'Tela grande e de ótima resolução, porém achei o celular um pouco pesado.'),
(33, 2, 2, 'O sistema é fluido, mas há muitos aplicativos que não podem ser desinstalados.'),
(34, 1, 2, 'Desempenho excelente em jogos, mas esquenta muito durante uso prolongado.'),
(35, 3, 2, 'Custo-benefício bom, mas a memória interna é pequena sem expansão.'),
(36, 4, 2, 'Interface amigável, mas recebo muitas notificações de apps da Samsung.'),
(37, 1, 2, 'Construção robusta, mas a traseira arranha facilmente.'),
(38, 2, 2, 'Carregamento rápido, mas o cabo que acompanha é curto demais.'),
(39, 3, 2, 'Câmera frontal deixa a desejar, especialmente à noite.'),
(40, 4, 2, 'Rápido e sem travamentos, mas a tela não é tão resistente e risca fácil.'),
(41, 1, 2, 'A tela tem cores vivas, mas consome muita bateria.'),
(42, 2, 2, 'O desbloqueio por digital é ágil, mas falha quando o dedo está úmido.'),
(43, 3, 2, 'O áudio é bom, mas o volume máximo poderia ser mais alto.'),
(44, 4, 2, 'Bom para redes sociais, mas a bateria não dura o suficiente com uso intenso.');

INSERT INTO comentarios (id, idCliente, idProduto, conteudo) VALUES
(45, 1, 3, 'Imagem nítida e cores vivas, mas o brilho não é tão bom em ambientes claros.'),
(46, 2, 3, 'Fácil de configurar, porém o sistema de navegação é um pouco lento.'),
(47, 3, 3, 'Qualidade de som satisfatória, mas falta potência em volumes altos.'),
(48, 4, 3, 'Sistema rápido, mas o controle remoto parece frágil e não responde bem às vezes.'),
(49, 1, 3, 'Funciona bem com serviços de streaming, mas às vezes desconecta do Wi-Fi.'),
(50, 2, 3, 'Resolução 4K impressionante, mas o tempo de resposta entre os canais é lento.'),
(51, 3, 3, 'Design moderno, mas a base é instável e precisa de suporte adicional.'),
(52, 4, 3, 'Fácil de montar na parede, mas os cabos são curtos.'),
(53, 1, 3, 'Conecta bem com outros dispositivos, mas o sistema trava ocasionalmente.'),
(54, 2, 3, 'Boa relação custo-benefício, mas o software de atualização é lento.'),
(55, 3, 3, 'Atualização de software demorada, e às vezes reinicia sozinho.'),
(56, 4, 3, 'Perfeita para assistir esportes, mas a imagem perde qualidade em ângulos extremos.'),
(57, 1, 3, 'Loja de aplicativos variada, mas muitos apps são pagos.'),
(58, 2, 3, 'Controle com poucos botões, mas o sensor não responde bem de longe.'),
(59, 3, 3, 'Qualidade do som poderia ser melhor, e o volume é baixo mesmo no máximo.');

INSERT INTO comentarios (id, idCliente, idProduto, conteudo) VALUES
(60, 1, 4, 'Som claro e graves potentes, mas os agudos não são tão nítidos.'),
(61, 2, 4, 'Confortável, mas a bateria dura menos do que o anunciado.'),
(62, 3, 4, 'Ótimo isolamento de ruído, porém o fone esquenta as orelhas depois de um tempo.'),
(63, 4, 4, 'Design bonito, mas o material parece um pouco frágil.'),
(64, 1, 4, 'Conexão Bluetooth rápida, mas às vezes há interferências.'),
(65, 2, 4, 'Bom para ouvir música, mas o microfone não é muito bom para chamadas.'),
(66, 3, 4, 'Confortável, mas o ajuste poderia ser mais firme para correr.'),
(67, 4, 4, 'Qualidade do som excelente, mas o fone é um pouco pesado.'),
(68, 1, 4, 'Carregamento rápido, mas o cabo fornecido é muito curto.'),
(69, 2, 4, 'Controles fáceis de usar, mas as teclas são um pouco duras.'),
(70, 3, 4, 'Boa qualidade, mas o volume máximo não é tão alto quanto esperado.'),
(71, 4, 4, 'Bom para esportes, mas não fica tão firme durante corridas intensas.'),
(72, 1, 4, 'Microfone capta bem a voz, mas o áudio da chamada não é tão claro.'),
(73, 2, 4, 'Graves potentes, mas os médios ficam um pouco abafados.'),
(74, 3, 4, 'Acabamento bonito, mas o material parece que vai desgastar rápido.');

select * from comentarios