import 'package:bahliu/widgets/customInput.dart';
import 'package:bahliu/widgets/orange_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
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
                labels(context),
                Text('Términos y condiciones de uso', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200) )
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
    padding: EdgeInsets.all(50),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 40),
       child: Column(
         children: [
           Text('Correo electrónico:', style: TextStyle(color: Colors.white, fontSize: 18),),
           CustomInput(icon: Icons.mail_outline,placeholder: 'john@bahliu.com',keyboardType: TextInputType.emailAddress, textController: emailController,),
           Text('Contraseña:', style: TextStyle(color: Colors.white, fontSize: 18),),
           CustomInput(icon: Icons.lock_outline,placeholder: 'Contraseña',keyboardType: TextInputType.visiblePassword, textController: passwordController, isPassword: true,),
           OrangeButton(buttonText: 'Iniciar sesión',callback: (){},)
         ],
      ),
    );
  }
}

Widget labels(BuildContext context){
  return Column(
    children: [
      Text('¿No tienes cuenta?', style:TextStyle(color: Colors.white, fontSize: 15)),
      GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, 'register');
        },
        child: Text('Crea una ahora', style: TextStyle(color: Color(0xffE34E22), fontSize: 20, fontWeight: FontWeight.w400),)),
    ],
  );
}

