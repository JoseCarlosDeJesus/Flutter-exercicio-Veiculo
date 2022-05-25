
import 'package:flutter_exercicio_veiculo/model/Veiculo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  //List<String> lista = [];

  final List<Veiculo> veiculos= <Veiculo>[];
  //final cursos = <String>["Java Basico", "JPython Avançado", "Angular Básico"];
  //final cargaHoraria = <int>[40,30,20];

  TextEditingController _placaController = TextEditingController();
  TextEditingController _anoController = TextEditingController();
  TextEditingController _corController = TextEditingController();
  TextEditingController _marcaController = TextEditingController();
  TextEditingController _modeloController = TextEditingController();

  void _inserir(){
    setState(() {
      veiculos.insert(0,Veiculo(_placaController.text,
        int.parse(_anoController.text),
        _corController.text,
        _marcaController.text,
        _modeloController.text,
      ));
    });
  }

  _limparFormulario(){
    _placaController.text= "" ;
    _anoController.text="" ;
    _corController.text="" ;
    _marcaController.text="" ;
    _modeloController.text="";

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controle Veículo"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(onPressed: _limparFormulario,
            icon: Icon(Icons.refresh),
          )

        ],
      ),
      body: Column(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _placaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Placa',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _anoController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ano',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _corController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cor',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _marcaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Marca',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _modeloController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Modelo',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              _inserir();
              _limparFormulario();
            },
            child: Text("Inserir"),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: veiculos.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(2.0),
                  color: veiculos[index].ano >= 2000? Colors.purple[400]:
                  veiculos[index].ano >= 2010? Colors.purple[100]:
                  Colors.deepPurpleAccent[100],
                  child: Center(
                    child: Text("${veiculos[index]}",
                      style: TextStyle(fontSize: 18),),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
