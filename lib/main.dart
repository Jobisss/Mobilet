import 'package:flutter/material.dart';

void main() {
  runApp(Meuapp());
}

class Meuapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Paginahome(),
    );
  }
}

class Paginahome extends StatefulWidget {
  const Paginahome({super.key});

  @override
  State<Paginahome> createState() => _PaginahomeState();
}

class _PaginahomeState extends State<Paginahome> {

  int contador = 0;
  void aluno_entrou() {
    setState(() {
      contador++;
    });
  }

  void aluno_saiu() {
    setState(() {
      if(contador > 0){
        contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicativo saída de alunos"),
      ),
      drawer: const Drawer(),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:(AssetImage("assets/images/foto.jpg")),
              fit: BoxFit.cover
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text(
            "Comportamento dos alunos",
            style: TextStyle(
              
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Color.fromARGB(255, 0, 0, 0),
              letterSpacing: 10),
        ),
        Text(
          "$contador",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Color.fromARGB(255, 255, 0, 0),
              letterSpacing: 10),
        ),
        Row(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: aluno_entrou,
              child: Text("Entrou"),
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(11, 152, 39, 0.766),
                primary: const Color.fromARGB(255, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const SizedBox(
              width: 64,
            ),
            TextButton(
              onPressed: aluno_saiu, 
              child: const Text("saiu"),
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(156, 4, 49, 13),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                )
              ),
              )
          ],
        )
      ])),
    );
  }
}
