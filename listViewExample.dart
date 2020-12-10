import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/winery.dart';
import 'package:screen1/createScreenOne.dart';

const _PATH = 'images';
const _pic1 = '$_PATH/cantina.jpg';

class MyPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cantine"),
        backgroundColor: Color.fromARGB(255, 160, 25, 29),
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
      new Winery(0, "Cantina1", "Via Barletta 111", "Andria", "76123", ""),
      new Winery(1, "Cantina2", "Via Trani 112", "Andria", "76123", ""),
      new Winery(2, "Cantina3", "Via Bisceglie 113", "Andria", "76123", ""),
      new Winery(3, "Cantina4", "Via Gorizia 114", "Andria", "76123", ""),
      new Winery(4, "Cantina5", "Via Verdi 115", "Andria", "76123", ""),
      new Winery(5, "Cantina6", "Via Margherita 116", "Andria", "76123", ""),
      new Winery(6, "Cantina7", "Corso Cavour 117", "Andria", "76123", ""),
      new Winery(7, "Cantina8", "Viale Istria 118", "Andria", "76123", ""),
    ];



    return ListView.builder(
      //esegue un forEach implicito che utilizza come index l'itemCount, ossia la lenght del vettore che verrà riempito
      //dalla chiamata remota, ossia wineries[].
      //l'itemBuilder ha bisogno del contesto che gli viene passato dal runApp(MyApp) nel main, ossia dell'lbero gerarchico dei widget
      itemCount: wineries.length,
      itemBuilder: (context, index)
        {
          return createScreenOne(color: Color.fromARGB(255, 160, 25, 29), navigate: null, imageURL: Image.asset(_pic1), title: Text(wineries[index].name), subtitle: Text(wineries[index].street)).screenOne(BuildContext);
      },
    );
  }

  Widget build(BuildContext context) => Container();

}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cantine',
        home: MyPage()
    );
  }
}

void main() => runApp(MyApp());