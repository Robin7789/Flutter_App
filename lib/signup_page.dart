import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade200,
              Colors.blueAccent.shade700,
              Colors.blue.shade900,
            ],
          ),
        ),
        child: const Column(
          children: [
            TopSection(),
            InputSection(),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Déjà un compte ?',
            style: GoogleFonts.comfortaa(color: Colors.white),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Connectez-vous',
                style: GoogleFonts.comfortaa(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}

class InputSection extends StatelessWidget {
  const InputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            border: Border.all(
              color: Colors.white30,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.people_outline,
                  size: 30,
                  color: Colors.blue.shade900,
                ),
              ),
              Expanded(
                child: TextField(
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Pseudo',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            border: Border.all(
              color: Colors.white30,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.mail_outline,
                  size: 30,
                  color: Colors.blue.shade900,
                ),
              ),
              Expanded(
                child: TextField(
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Adresse email',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            border: Border.all(
              color: Colors.white30,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.lock_outline,
                  size: 30,
                  color: Colors.blue.shade900,
                ),
              ),
              Expanded(
                child: TextField(
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.1),
            border: Border.all(
              color: Colors.white30,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.date_range,
                  size: 30,
                  color: Colors.blue.shade900,
                ),
              ),
              Expanded(
                child: TextField(
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Date de naissance',
                    hintStyle: GoogleFonts.comfortaa(
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        child: Text(
          'Inscription'.toUpperCase(),
          style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 20,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
