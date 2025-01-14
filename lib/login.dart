//import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:firstapp/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool Pwdvisiblity = true;//Variable pour l'oeil du mot de passe
  //Création d'un objet Controller (email) pour récupérer la valeur du champ de saisie du mail
  TextEditingController email = TextEditingController();
  //Création d'un objet Controller (password) pour récupérer la valeur du champ de saisie du mot de passe
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: FadeInUp(
        duration: const Duration(milliseconds: 1600),
        //Utilisation d'un Container() qui englobe tous les éléments pour l'image de fond
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.jpg"), fit: BoxFit.cover/*Occuper l'espace disponible*/)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //Ajout du widget Expanded pour qu'un enfant s'agrandisse afin de remplir l'espace vertical disponible
                Expanded(
                  //Utilisation de Stack() pour superposer les éléments
                  child: Stack(
                    children: [
                      /*FadeInUp() est une animation fournie par la bibliothèque animate_do (elle est importée dans pubspec.yaml).
                      Elle permet de créer une animation où un widget apparaît en s'estompant (fade-in) tout en se déplaçant vers le haut (up).*/
                      FadeInUp(
                          duration: const Duration(microseconds: 1600),
                          //La première image
                          child: Image.asset(
                            'images/proxy-image.png',
                            height: 200,
                          ))
                    ],
                  ),
                ),
                Expanded(child: Stack(
                  children: [
                    FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Text(
                          "Bienvenue !",
                          style: GoogleFonts.poppins(
                              fontSize: 30,//la taille du texte
                              fontWeight: FontWeight.w600,//Largeur du texte
                              letterSpacing: 2,//Espace entre les lettres du mot
                              color: Colors.blue.shade600),
                        ))
                  ],
                ),),
                Expanded(
                  child: Stack(
                    children: [
                      FadeInUp(
                        //The duration of animation will be defined by hour, minute, second, microsecond and millisecond
                          duration: const Duration(milliseconds: 1600),
                          child: Text("Connectez-vous à votre compte",
                              style: GoogleFonts.poppins(//Utilisation de GoogleFont importer dans pubspec.yaml
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 2,
                                  color: Colors.black87)))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Affiche le texte "Email"
                Expanded(child: Stack(
                  children: [
                    const Row(),//Evite l'affichage du text au centre (cas spécifique)
                    FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Text(
                          "Email",
                          style: GoogleFonts.poppins(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ))
                  ],
                ),),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Stack(children: [
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      child: SizedBox(
                        height: 50,
                        //Champ de saisie pour mail
                        child: TextFormField(
                          controller: email,//Objet qui récupère la valeur du champ de saisie
                          decoration: InputDecoration(//Décoration du champ
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey.shade200,//Couleur de remplissage du champ
                              filled: true,//Active la couleur de remplissage (par exemple si tu survoles le champ)
                              suffixIcon: Icon(
                                Icons.email,
                                color: Colors.grey.shade800,
                                size: 20,
                              ),
                              hintText: "example@gmail.com",//Example de texte à afficher dans le chammp
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  color: Colors.grey)),
                        ),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                //Affiche le texte "Mot de passe"
                Expanded(child: Stack(
                  children: [
                    const Row(),//Evite l'affichage du text au centre (cas spécifique)
                    FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Text(
                          "Mot de passe",
                          style: GoogleFonts.poppins(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ))
                  ],
                ),),
                const SizedBox(
                  height: 5,
                ),
                //Champ de saisie pour password
                Expanded(child: Stack(children: [
                  FadeInUp(
                    duration: const Duration(milliseconds: 1600),
                    child: SizedBox(
                      height: 50,
                      child: TextFormField(
                        controller: password,//Objet qui récupère la valeur du champ de saisie
                        obscureText: Pwdvisiblity,//Pour masquer le contenu du champ mot de passe (normalement c'est à true : obscureText: true,)
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            //InkWell rend l'élément cliquable
                            suffixIcon: InkWell(
                              //Pour changer l'état de l'oeil
                              //Pour déclarer la fonction de l'état on peut utiliser ()=> ou (){}
                              onTap: () => setState(
                                      () => Pwdvisiblity = !Pwdvisiblity),//Après un clique change la valeur de la variable boolean au contraire
                              //Condition ternaire
                              child: Pwdvisiblity
                                  ? const Icon(Icons.visibility_off)/*Si vrai fermer l'oeil (changement de notre icon à Icon(Icons.visibility_off))*/
                                  : const Icon(Icons.visibility)/*Sinon ouvrir l'oeil (changement de notre icon à Icon(Icons.visibility))*/,
                              /*Note : Vous remarquerez que le contenu du champ mot de passse s'affiche ou ne s'affiche pas,
                              c'est parce qu'en utilisant la variable bollean Pwdvisiblity on change la valeur de notre "obscureText: Pwdvisiblity,"*/
                            ),
                            hintText: "Entre ton mot de passe",
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 13,
                                letterSpacing: 1,
                                color: Colors.grey)),
                      ),
                    ),
                  ),
                ]),),
                const SizedBox(
                  height: 5,
                ),
                //Forgot passwrod
                Expanded(
                  child: Stack(
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Mot de passe oublié ?",
                            style: GoogleFonts.poppins(
                                fontSize: 13, color: Colors.blue.shade800),
                          ),
                        ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Connexion button
                Expanded(
                  child: Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: ElevatedButton(
                              style: ButtonStyle(//Style pour button
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(30))),
                                  fixedSize:
                                  const WidgetStatePropertyAll(Size(200, 30)),
                                  backgroundColor: WidgetStatePropertyAll(
                                      Colors.blue.shade800)),
                              //Les options de clique du boutton "Se connecter"
                              onPressed: () {
                                //Si les valeurs des champs sont nulles
                                if (email.text.isEmpty ||
                                    password.text.isEmpty) {
                                  //Affiche un champ en bas avec le texte renseigner dans le widget Text()
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Veuillez saisir le login ou le motde passe !")));
                                }
                                //Si les valeurs des champs sont correctes
                                if (email.text == "example@gmail.com" &&
                                    password.text == "A4!g|s@8") {
                                  //Return home page
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                        return const Home();
                                      }));
                                } else {
                                  //Affiche un champ en bas avec le texte renseigner dans le widget Text()
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Login ou mot de passe incorect")));
                                }
                              },
                              child: Text(
                                "Se connecter",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                    fontSize: 15),
                              )))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //Faire un truc du genre ---------ou---------
                Expanded(child: Stack(
                  children: [
                    FadeInUp(
                      duration: const Duration(milliseconds: 1600),
                      //Row() affiche les widget en ligne
                      child: Row(
                        children: [
                          //Ajout du widget Expanded() pour éviter l'affichage de tiret haché sous forme jaune noir
                          const Expanded(
                            //Un tiret continu du genre ---------
                              child: Divider(
                                endIndent: 12,
                                color: Colors.black,
                              )),
                          Text(
                            "Ou",
                            style: GoogleFonts.poppins(),
                          ),
                          const Expanded(
                              child: Divider(
                                indent: 12,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),),
                //Pour mettre de l'espace entre du widget Stack()
                const SizedBox(
                  height: 10,
                ),
                //Pour affiche les logo de facebook, apple, google
                Expanded(
                  child: Stack(
                    children: [
                      FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  /*L'utilisation de mediaQuery.of entraîne automatiquement la reconstruction des
                                  widgets en fonction des tailles actuelles des appareils et des
                                  préférences de mise en page à chaque fois qu'ils changent par exemple sur téléphone ou tablette.*/
                                  height: MediaQuery.of(context).size.height/2,
                                  width: MediaQuery.of(context).size.width/2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset("images/google.png"),
                                  ),
                                ),
                              )),
                              /*const SizedBox(
                                  width: 22,
                                ),*/
                              Expanded(
                                child: Container(
                                  height: MediaQuery.of(context).size.height/2,
                                  width: MediaQuery.of(context).size.width/2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset("images/facebook.png"),
                                  ),
                                ),
                              ),
                              /*const SizedBox(
                                  width: 22,
                                ),*/
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height/2,
                                  width: MediaQuery.of(context).size.width/2,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey.shade200),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset("images/apple.png"),
                                  ),
                                ),
                              ))
                            ],
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pas de compte ?",
                              style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  fontSize: 13,
                                  color: Colors.blue.shade500),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "S'inscrire",
                              style: GoogleFonts.poppins(
                                  letterSpacing: 1,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue.shade800),
                            )
                          ],
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

