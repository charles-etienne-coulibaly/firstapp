import 'package:firstapp/login.dart';
import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Planning> datas = [
    Planning("Anglais", "maison", "description english", "12/12/2024",
        "images/apple.png"),
    Planning("Anglais1", "maison1", "description english1", "19/12/2024",
        "images/facebook.png"),
    Planning(
        "Anglais2",
        "maison2",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        "26/12/2024",
        "images/fond.jpg"),
    Planning(
        "Anglais3",
        "maison3",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3",
        "03/01/2025",
        "images/google.png"),
    Planning(
        "Element1",
        "maison2",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.2",
        "26/12/2024",
        "images/fond.png"),
    Planning(
        "Element2",
        "maison3",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3",
        "03/01/2025",
        "images/proxy-image.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/facebook.png")),
              ),
            ),
            Center(
                child: Text("user@gmail.com"),),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return const Home();
                    }));
              },
              child: ListTile(title: Text("Home"),
              leading: Icon(Icons.home),),
            ),
            Divider(
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return const Home();
                    }));
              },
              child: ListTile(title: Text("Planning exécute"),
                leading: Icon(Icons.list),),
            ),
            Divider(
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return const Home();
                    }));
              },
              child: ListTile(title: Text("A propos"),
                leading: Icon(Icons.person),),
            ),
            Divider(
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return const Login();
                    }));
              },
              child: ListTile(title: Text("Déconnexion"),
                leading: Icon(Icons.logout),),
            ),
            Divider(
            ),

          ],
        ),
      ),
        appBar: AppBar(

          /*last logout button
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const Login();
                  }));
                },
                icon: const Icon(Icons.logout))
          ],*/
          title: const Text("Page d'Accueil"),
          elevation: 10,
          backgroundColor: Colors.cyan,
        ),
        body: ListView.builder(
            itemCount: datas.length,
            itemBuilder: (context, int index) {
              return PlanningWidget(planning: datas[index]);
            }));
  }
}
