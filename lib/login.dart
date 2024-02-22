import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:secondsemflut/sevice/firebase_auth_service.dart';

class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
final _formKey = GlobalKey<FormState>();

final _usernameController = TextEditingController();

final _passwordController = TextEditingController();

 bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Login'),
        centerTitle: true,
      ),
      body: Form(
        key:_formKey ,
        child: Column(
          children: [
              TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  labelText: 'Enter your username'
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a password',
                ),
              
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.2,
                    child: Checkbox(
                      value: _isChecked,
                      onChanged: (newValue){
                        print('New Value $newValue');
                        if(newValue!=null){
                          setState(() {
                               _isChecked = newValue;                       
                        });
                        
                        }
                      
                      },
                    ),
                  ),
                  
                  const FractionallySizedBox(
                    widthFactor: 0.8,
                    child: Text('Agree to all conditions of the app?')),
                ],
              ),
              Wrap(
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.3,
                    child: ElevatedButton(
                      onPressed: () async {
                        if(_isChecked != null){
                            if(_isChecked){
                              final username =_usernameController.text;
                              final password =_passwordController.text;
                              final firebaseAuth =FirebaseAuthService();
                              final User? user = await firebaseAuth.loginWithEmailPassword(username, password);
                               if(user!=null){
                                 Navigator.of(context).pushReplacementNamed('/myapp');
                               }else{
                                print('Login error');
                               }
      //proceed
                            }else{
                              print('Please check the terms');
                            }
                            
                        }
                      },
                      child: Text('Login'),
                    ),
                  ),
                  const FractionallySizedBox(
                    widthFactor: 0.03,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.3,
                    child: ElevatedButton(
                      onPressed: (){},
                      child:Text('Reset'),
                    ),
                  ),
                  const FractionallySizedBox(
                    widthFactor: 0.03,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.3,
                    child: ElevatedButton(
                      onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/myapp');
                      },
                      child:const Text('Signup'),
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}