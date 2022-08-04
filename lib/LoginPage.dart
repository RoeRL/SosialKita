import 'package:flutter/material.dart';
import 'package:sosialkita/CreateAccPage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(80),
         child: ListView(
           children: <Widget>[
             Container(
                 alignment: Alignment.center,
                 padding: const EdgeInsets.all(10),
                 child: Image.asset('assets/images/user.png', height: 100, width: 100, ),
           ),
             Container(
                 alignment: Alignment.center,
                 padding: const EdgeInsets.all(10),
                 child: const Text.rich(
                   TextSpan(
                     children: <TextSpan>[
                       TextSpan(text: 'Welcome Back', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,))
                     ],
                 )),
             ),
             Container(
               alignment: Alignment.center,
               padding: const EdgeInsets.all(1),
               child: const Text.rich(
                   TextSpan(
                     children: <TextSpan>[
                       TextSpan(text: 'Sign to continue', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15,))
                     ],
                   )),
             ),
             Container(
               padding: const EdgeInsets.all(10),
               child: TextField(
                 controller: emailController,
                 decoration: const InputDecoration(
                   icon: Icon(Icons.email_outlined),
                   border: UnderlineInputBorder(),
                   labelText: 'EMAIL',
                 ),
               ),
             ),
             Container(
               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
               child: TextField(
                 obscureText: true,
                 controller: passwordController,
                 decoration: const InputDecoration(
                   icon: Icon(Icons.lock_outlined),
                   border: UnderlineInputBorder(),
                   labelText: 'PASSWORD',
                 ),
               ),
             ),
             TextButton(
               onPressed: () {
               },
               style: TextButton.styleFrom(
                 padding: EdgeInsets.fromLTRB(150, 0, 0, 0)
               ),
               child: const Text('Forgot Password',),
             ),
             Container(
                 height: 50,
                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                 child: ElevatedButton(
                   child: const Text('Login'),
                   onPressed: () {
                   },
                 )
             ),
             Container(
               padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
               child: Row(
                 children: <Widget>[
                   const Text('Does not have account?'),
                   TextButton(
                     child: const Text(
                       'SIGN IN',
                       style: TextStyle(fontSize: 15),
                     ),
                     onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAcc()));
                     },
                   )
                 ],
               ),
             )
           ],
         ),
       ),
     );
  }
}
