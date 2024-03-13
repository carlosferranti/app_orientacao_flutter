import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Importe o pacote url_launcher

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Página Institucional',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InstitutionalPage(),
    );
  }
}

class InstitutionalPage extends StatelessWidget {
  // Função para abrir a URL externa
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir a URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anjos da Natureza'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Adicione a ação desejada para o item Home
              },
            ),
            ListTile(
              title: Text('Sobre'),
              onTap: () {
                // Adicione a ação desejada para o item Sobre
              },
            ),
            ListTile(
              title: Text('Equipamentos'),
              onTap: () {
                // Adicione a ação desejada para o item Equipamentos
              },
            ),
            ListTile(
              title: Text('Resultados'),
              onTap: () {
                // Adicione a ação desejada para o item Resultados
              },
            ),
            ListTile(
              title: Text('Eventos'),
              onTap: () {
                _launchURL(
                    'https://sua-url-de-eventos.com'); // Chame a função para abrir a URL externa
              },
            ),
            ListTile(
              title: Text('Fotos'),
              onTap: () {
                // Adicione a ação desejada para o item Fotos
              },
            ),
            ListTile(
              title: Text('Documentos'),
              onTap: () {
                // Adicione a ação desejada para o item Documentos
              },
            ),
            ListTile(
              title: Text('Redes Sociais'),
              onTap: () {
                // Adicione a ação desejada para o item Redes Sociais
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40), // Distância superior adicionada aqui
              Text(
                'Seja Bem-vindo à Associação Anjos da Natureza',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Somos uma associação dedicada à preservação da natureza e ao cuidado dos animais.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Adicione a ação desejada para o botão
                },
                child: Text('Entre em Contato'),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Equipamentos',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            constraints: BoxConstraints(maxHeight: 500),
                            child: _buildEquipmentInfo(
                              'Mapa',
                              'Os mapas de orientação são criados exclusivamente para esse esporte. São detalhados, precisos e projetados para uma “escala humana”. Representam o terreno com características que uma pessoa observaria facilmente ao se mover na área.\n\nCaracterísticas dos Mapas:\n- Não apontam o Norte geográfico, mas sim o Norte magnético (devido ao uso de bússolas pelos atletas). Incluem detalhes como vegetação, relevo, hidrografia, rochas e construções humanas.\n\nPadrões Internacionais:\n- A IOF (Federação Internacional de Orientação) define regras para a criação de mapas em todo o mundo.\n\nOs mapas de orientação são equipamentos fundamentais para os atletas navegarem pelo terreno e alcançarem os pontos de controle durante as provas.',
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            constraints: BoxConstraints(maxHeight: 500),
                            child: _buildEquipmentInfo(
                              'Bússola',
                              'A bússola é uma ferramenta fundamental no esporte de orientação. Aqui estão os principais pontos sobre seu uso:\n\n1. Navegação Precisa:\n- A bússola ajuda os atletas a se orientarem no terreno. Indica o norte magnético, permitindo que os competidores sigam direções precisas.\n\n2. Técnica de Uso:\n- Os atletas seguram a bússola nivelada e alinham a agulha com a marcação de norte. Isso ajuda a determinar a direção correta para alcançar os pontos de controle.\n\n3. Treinamento Essencial:\n- Atletas de orientação praticam habilidades de bússola para melhorar sua precisão na navegação.',
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            constraints: BoxConstraints(maxHeight: 500),
                            child: _buildEquipmentInfo(
                              'Calçado',
                              'Calçado de Orientação não possui um tipo específico definido. No entanto, independentemente de serem botas, tênis ou sapatos, o calçado escolhido deve ser o mais cômodo, leve e resistente possível. Ele também deve proporcionar um andar seguro e aderência ao terreno variado encontrado na prática da orientação.',
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            constraints: BoxConstraints(maxHeight: 500),
                            child: _buildEquipmentInfo(
                              'Vestimentas',
                              'As vestimentas no esporte de orientação desempenham um papel crucial para o sucesso dos atletas. Aqui estão os principais pontos:\n\n1. Roupas Adequadas:\n- As roupas devem cobrir as pernas para proteger contra vegetação e arranhões. Calças compridas são recomendadas. Camisetas leves e respiráveis são ideais.\n\n2. Calçados Específicos:\n- Tênis ou sapatos com boa aderência e suporte são essenciais. Devem ser confortáveis para longas distâncias e terrenos variados.\n\n3. Proteção Solar e Clima:\n- Use chapéus, bonés ou óculos de sol para proteger-se do sol. Adapte as roupas conforme o clima (camadas para frio, roupas leves para calor).\n\nEm resumo, escolha roupas funcionais, confortáveis e adequadas ao terreno para aproveitar ao máximo o esporte de orientação.',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Resultados',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'É um fato conhecido de todos que um leitor se distrairá com o conteúdo de texto legível de uma página quando estiver examinando sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma distribuição normal de letras, ao contrário de "Conteúdo aqui, conteúdo aqui", fazendo com que ele tenha uma aparência similar a de um texto legível. Muitos softwares de publicação e editores de páginas na internet agora usam Lorem Ipsum como texto-modelo padrão, e uma rápida busca por \'lorem ipsum\' mostra vários websites ainda em sua fase de construção. Várias versões novas surgiram ao longo dos anos, eventualmente por acidente, e às vezes de propósito (injetando humor, e coisas do gênero).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    //-- Eventos
                    SizedBox(height: 40),
                    Text(
                      'Eventos',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'É um fato conhecido de todos que um leitor se distrairá com o conteúdo de texto legível de uma página quando estiver examinando sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma distribuição normal de letras, ao contrário de "Conteúdo aqui, conteúdo aqui", fazendo com que ele tenha uma aparência similar a de um texto legível. Muitos softwares de publicação e editores de páginas na internet agora usam Lorem Ipsum como texto-modelo padrão, e uma rápida busca por \'lorem ipsum\' mostra vários websites ainda em sua fase de construção. Várias versões novas surgiram ao longo dos anos, eventualmente por acidente, e às vezes de propósito (injetando humor, e coisas do gênero).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    //-- Fotos
                    SizedBox(height: 40),
                    Text(
                      'Fotos',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'É um fato conhecido de todos que um leitor se distrairá com o conteúdo de texto legível de uma página quando estiver examinando sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma distribuição normal de letras, ao contrário de "Conteúdo aqui, conteúdo aqui", fazendo com que ele tenha uma aparência similar a de um texto legível. Muitos softwares de publicação e editores de páginas na internet agora usam Lorem Ipsum como texto-modelo padrão, e uma rápida busca por \'lorem ipsum\' mostra vários websites ainda em sua fase de construção. Várias versões novas surgiram ao longo dos anos, eventualmente por acidente, e às vezes de propósito (injetando humor, e coisas do gênero).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    //-- Documentos
                    SizedBox(height: 40),
                    Text(
                      'Documentos',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'É um fato conhecido de todos que um leitor se distrairá com o conteúdo de texto legível de uma página quando estiver examinando sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma distribuição normal de letras, ao contrário de "Conteúdo aqui, conteúdo aqui", fazendo com que ele tenha uma aparência similar a de um texto legível. Muitos softwares de publicação e editores de páginas na internet agora usam Lorem Ipsum como texto-modelo padrão, e uma rápida busca por \'lorem ipsum\' mostra vários websites ainda em sua fase de construção. Várias versões novas surgiram ao longo dos anos, eventualmente por acidente, e às vezes de propósito (injetando humor, e coisas do gênero).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEquipmentInfo(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              content,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
