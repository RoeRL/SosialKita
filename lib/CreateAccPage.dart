import 'package:flutter/material.dart';
import 'package:sosialkita/LoginPage.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({Key? key}) : super(key: key);

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Create Account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,))
                  ]
                )
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: const Text.rich(
                  TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Create a new account', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15,))
                      ]
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person_outlined),
                    border: UnderlineInputBorder(),
                    labelText: 'NAME',
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    border: UnderlineInputBorder(),
                    labelText: 'EMAIL',
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.phone_android_outlined),
                    border: UnderlineInputBorder(),
                    labelText: 'PHONE',
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock_outline),
                    border: UnderlineInputBorder(),
                    labelText: 'PASSWORD',
                  )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock_outline),
                    border: UnderlineInputBorder(),
                    labelText: 'CONFIRM PASSWORD',
                  )
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('CREATE ACCOUNT'),
                  onPressed: () {
                  },
                )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  const Text('Already have a account?'),
                  TextButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
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
