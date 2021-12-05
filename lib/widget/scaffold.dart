

        import 'package:flutter/material.dart';

        void main() => runApp(ScaffoldView());

    class ScaffoldView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        actions: [
          AppbarIconButton(
            "Air",
            Icon(
              Icons.electric_bike_sharp,
            ),
          ),
          AppbarIconButton(
            "BelAir",
            Icon(
              Icons.qr_code,
            ),
          ),
          AppbarIconButton(
            "Cull",
            Icon(Icons.add_a_photo),
          ),
        ],
        title: Text('Scaffold'),
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            gridViewContainer("He'd have you fun!", Colors.orangeAccent),
            gridViewContainer("Oldu mu şimdi?!", Colors.blueAccent),
            gridViewContainer("Napcaz şimdi!", Colors.greenAccent),
            gridViewContainer("Dere boyu kavaklar!", Colors.pinkAccent),
            gridViewContainer("Açtı yeşil yapraklar!", Colors.purpleAccent),
            gridViewContainer("Ben o yare doymadım!", Colors.cyanAccent),
          ],
        ),
        // child: Text(
        //   'Merhaba Scaffold',
        //   textDirection: TextDirection.ltr,
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItemOrnekleri(
            Icon(Icons.access_alarm_outlined),
            "Arşiv",
          ),
          BottomNavigationBarItemOrnekleri(
            Icon(Icons.aod_sharp),
            "Karışık",
          ),
          BottomNavigationBarItemOrnekleri(
            Icon(Icons.tty),
            "Turşu",
          ),
        ],
        onTap: (int i) {
          switch (i) {
            case 0:
              print("Tıkladığınız buton Arşiv Butonudur");

              break;
            case 1:
              print("Tıkladığınız buton Karışık Butonudur");

              break;
            case 2:
              print("Tıkladığınız buton Turşu Butonudur");

              break;
            default:
          }
        },
      ),
      drawer: Drawer(
        child: ListTile(
          leading: Icon(
            Icons.change_history,
          ),
          title: Text("Change History"),
          onTap: () {
            Navigator.pop(context);
            print("yanMenu öğesine tıkladınız");
          },
        ),
      ),
    );
  }

  Container gridViewContainer(String yazi, Color renk) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: renk,

            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      child: Text(
        yazi,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  BottomNavigationBarItem BottomNavigationBarItemOrnekleri(
      Icon ikon, String altyazi) {
    return BottomNavigationBarItem(
      icon: ikon,
      label: altyazi,
    );
  }

  IconButton AppbarIconButton(String tool, Icon ikon) {
    return IconButton(
      onPressed: () {
        print(tool);
      },
      tooltip: tool,
      icon: ikon,
    );
  }
}
