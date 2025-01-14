import 'package:firstapp/accueil.dart';
import 'package:firstapp/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedItem = 0;/*La variable selectedItem sera utiliser pour changer l'index
   de notre tableau, par exemple en java
   String[] seasons = new String {"Winter", "Spring", "Summer", "Autumn"};
   avec index 0 pour "Winter", index 1 pour "Spring", index 2 pour "Summer", index 3 pour"Autumn" */
  List<Widget> pages = [
    Accueil(),//Page d'accueil
    Center(child: Text("Planning")),
    Center(child: Text("A propos")),
  ];
  //Fonction pour attribuer à selectedItem la valeur de l'index du navigation sélectionner
  void cliqueNavigation(int index) {
    setState(() {
      selectedItem = index;
      print("index =$selectedItem");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Menu hamburger
      drawer: Drawer(
        child: Column(
          children: [
            //Logo facebook
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("images/facebook.png")),
              ),
            ),
            //Email
            Center(
              child: Text("user@gmail.com"),
            ),
            //InkWell() rend l'élément cliquable
            InkWell(
              //Return home page
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const Home();
                }));
              },
              //Elément élément avec son icon
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
            ),
            Divider(),//Barre de séparation
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const Home();
                }));
              },
              child: ListTile(
                title: Text("Planning exécute"),
                leading: Icon(Icons.list),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const Home();
                }));
              },
              child: ListTile(
                title: Text("A propos"),
                leading: Icon(Icons.person),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const Login();
                }));
              },
              child: ListTile(
                title: Text("Déconnexion"),
                leading: Icon(Icons.logout),
              ),
            ),
            Divider(),
          ],
        ),
      ),
      //Les bouttons de navigation
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItem,//Boutton actuelle sélectionner
          onTap: cliqueNavigation,//Utilise la fonction cliqueNavigation
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Planning"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "A propos"),
          ]),
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
      body: pages[selectedItem],//Affiche le contenu de la liste List<Widget> pages[] en fonction de la valeur de selectedItem
    );
  }
}
