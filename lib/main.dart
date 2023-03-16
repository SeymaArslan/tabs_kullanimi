import 'package:flutter/material.dart';
import 'package:tabs_kullanimi/Sayfa1.dart';
import 'package:tabs_kullanimi/Sayfa2.dart';
import 'package:tabs_kullanimi/Sayfa3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Tabs kullanarak aynı ekranda birden fazla sayfa görebiliriz, tablara tıklayarak veya parmak hareketi ile
  // sağa sola kaydırarak sayfalar arasında geçiş yapabiliriz

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,  // tab sayısı
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabs Kullanımı"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Bir",),  // tab tasarımları
              Tab(icon: Icon(Icons.looks_two, color: Colors.blue,),),
              Tab(text: "Üç", icon: Icon(Icons.looks_3),),
            ],
            indicatorColor: Colors.pink,  // sayfa tab belirteç rengi
            labelColor: Colors.orange,  // tab yazı ikon rengi
          ),
        ),
        body: TabBarView(
          children: [
            Sayfa1(), // sayfa çağırdık sayfaların içerisinde appbar tanımlamama sebebimiz hoş bir görüntü olmaması
            Sayfa2(),
            Sayfa3(),
          ],
        ),

      ),
    );
  }
}
