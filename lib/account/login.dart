import 'package:flutter/material.dart';
import 'package:clothing_app/common/the_outfit_button.dart';
import 'package:clothing_app/common/the_outfit_separator.dart';
import 'package:clothing_app/common/the_outfit_textfield.dart';
import 'package:clothing_app/common/the_outfit_wrapper.dart';
import 'package:clothing_app/utils/constants.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return TheOutfitWrapper(
        hasBack: true,
        hasMenu: false,
        isList: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16),
              Text('Bine ai venit!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 16),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TheOutfitSeparator(center: false)),
              SizedBox(height: 16),
              Text('Autentifică-te pentru a putea accesa\npanoul de client.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
              SizedBox(height: 32),
              Text('Email',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 4),
              TheOutfitTextField(
                onChanged: (value) {},
                onTap: () {},
                input: TextInputType.emailAddress,
                hint: "email@email.com",
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Parola',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  Text('Ai uitat parola?',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w500))
                ],
              ),
              SizedBox(height: 4),
              TheOutfitTextField(
                onChanged: (value) {},
                onTap: () {},
                input: TextInputType.text,
                hint: "************",
              ),
              SizedBox(height: 8),
              buildRememberMe(),
              TheOutfitButton('Autentificare', false, () {}),
              SizedBox(height: 32),
              Column(
                children: [
                  Text('Nu ai încă profil?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Text('Creează-ți profilul!',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              SizedBox(height: 32),
              Column(
                children: [
                  Text('Ți-ai creat profil dar nu ai cont?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Text('Înregistrează-te',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildRememberMe() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.0,
            width: 20.0,
            child: Checkbox(
              value: rememberMe,
              side: BorderSide(color: primaryColor, width: 1.5),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              // activeColor: MaterialStateProperty.all<Color>(primaryColor),
              activeColor: primaryColor,
              onChanged: (bool? value) {
                setState(() {
                  rememberMe = value!;
                });
              },
            ),
          ),
          SizedBox(width: 8,),
          Text(
            'Tine-ma minte',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 48),
        ],
      ),
    );
  }
}
