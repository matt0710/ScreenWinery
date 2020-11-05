import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/winery.dart';

class MyPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Winery"),
        backgroundColor: Colors.deepPurple,
      ),
      
      body: MyListView()._myListViewWithCustomIconAndCard(context), //gli sto passando il contesto di MYPage che però è stateless e lo prende o
      //dal runapp o dalla cima dell'albero
      
    );
  }
  
}

class MyListView extends StatelessWidget {

  Widget _myListViewWithCustomIconAndCard(BuildContext context) {
//    final titles = [
//      'alarm',
//      'pics',
//      'PDF collection',
//      'camera',
//      'giftcard',
//      'edit',
//      'adb',
//      'zoom in',
//      'zoom out'
//    ];
//    final icons = [
//      Icons.access_alarm,
//      Icons.collections,
//      Icons.picture_as_pdf,
//      Icons.camera,
//      Icons.card_giftcard,
//      Icons.mode_edit,
//      Icons.adb,
//      Icons.zoom_in,
//      Icons.zoom_out
//    ];
    final wineries = [
      new Winery(0, "Bellissima cantina", "Via Barletta 367", "Andria", "76123", ""),
      new Winery(1, "Bellissima cantina", "Via Barletta 367", "Andria", "76123", ""),
      new Winery(2, "Bellissima cantina", "Via Barletta 367", "Andria", "76123", ""),
      new Winery(3, "Bellissima cantina", "Via Barletta 367", "Andria", "76123", ""),
      new Winery(4, "Bellissima cantina", "Via Barletta 367", "Andria", "76123", ""),
    ];

    return ListView.builder(
      //esegue un forEach implicito che utilizza come index l'itemCount, ossia la lenght del vettore che verrà riempito
      //dalla chiamata remota, ossia wineries[].
      //l'itemBuilder ha bisogno del contesto che gli viene passato dal runApp(MyApp) nel main, ossia dell'lbero gerarchico dei widget
      itemCount: wineries.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Card(//definisco la forma
            elevation: 3,
            shape: StadiumBorder(
                  side: BorderSide(
                    color: Colors.purpleAccent,
                    width: 1.0,
                  )
              ),
            child: InkWell(//definisco la forma dell'ombra che si genera alla pressione
              customBorder: StadiumBorder(
                  side: BorderSide(
                    color: Colors.purpleAccent,
                    width: 1.0,
                  )
              ),
              onTap: () => print("Ciao"),// definisco l'evento che accade alla pressione: realisticamente dovrà reindirizzarmi allo screen
              //di Leo
              child: ListTile(
                  leading: Icon(Icons.access_alarm, color: Colors.orange[800], size: 20),//questo verrà sositutito dll'asset passato
                //dalla chiamata al server
                  title: Text(wineries[index].name),// anche questo
                //ovviamente la chiamata riempie sempre il vettore wineries, quindi si prendono i dati da li
                ),
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) => Container();

}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'assets',
        home: MyPage()
    );
  }
}

void main() => runApp(MyApp());