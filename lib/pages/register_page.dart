import 'package:bahliu/widgets/customInput.dart';
import 'package:bahliu/widgets/orange_button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000026),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height *.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                logo(),
                _Form(),
                labels(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget logo(){
  return Container(
    height: 150,
    child: Image(image: AssetImage('assets/LogoBahliu-ColorPNG.png'),));
}

class _Form extends StatefulWidget {

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  //Controladores
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 40),
       child: Column(
         children: [
           Text('Introduzca su nombre:', style: TextStyle(color: Colors.white, fontSize: 18),),
           CustomInput(icon: Icons.perm_identity,placeholder: 'Juan Pérez', textController: nameController,),
           Text('Correo electrónico:', style: TextStyle(color: Colors.white, fontSize: 18),),
           CustomInput(icon: Icons.mail_outline,placeholder: 'juan@bahliu.com',keyboardType: TextInputType.emailAddress, textController: emailController,),
           Text('Contraseña:', style: TextStyle(color: Colors.white, fontSize: 18),),
           CustomInput(icon: Icons.lock_outline,placeholder: 'Contraseña',keyboardType: TextInputType.visiblePassword, textController: passwordController, isPassword: true,),
           CustomInput(icon: Icons.lock_outline,placeholder: 'Confirmar contraseña',keyboardType: TextInputType.visiblePassword, textController: confirmController, isPassword: true,),
           checkBoxes(),
           OrangeButton(buttonText: 'Crear cuenta',callback: (){},),
         ],
      ),
    );
  }
}

Widget checkBoxes(){
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
      children: [
        Row(children: [
          Checkbox(focusColor: Colors.white,activeColor: Colors.white, checkColor: Colors.orange,value: true, onChanged: null),
          Text('Acepto todos los términos y condiciones.',style: TextStyle(color: Colors.white),)
        ],),
        Row(children: [
          Checkbox(focusColor: Colors.white,activeColor: Colors.white, checkColor: Colors.orange,value: true, onChanged: null),
          Wrap(children: [Text('He leído y estoy de acuerdo con el\nAviso de privacidad.',style: TextStyle(color: Colors.white),)] )
        ],),
        
      ],
    ),
  );
}

Widget labels(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Column(
      children: [
        Text('¿Ya tienes cuenta?', style:TextStyle(color: Colors.white, fontSize: 15)),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, 'login');
          },
          child: Text('Ingresa con tu cuenta', style: TextStyle(color: Color(0xffE34E22), fontSize: 20, fontWeight: FontWeight.w400),)),
      ],
    ),
  );
}
