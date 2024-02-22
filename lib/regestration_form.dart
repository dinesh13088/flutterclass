
import 'package:flutter/material.dart';
import 'package:secondsemflut/sevice/firebase_auth_service.dart';

class RegestrationForm extends StatelessWidget{
   RegestrationForm({super.key});
  final _formKey= GlobalKey<FormState>();
  final _fullNameController=TextEditingController();
  final _emailController =TextEditingController();
  final _passwordController =TextEditingController();
  final _phoneController =TextEditingController();
  final _emailRegexPattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  @override
  Widget build(BuildContext context)
  {
    return Form(
            key: _formKey,
            child: Container(
              width:MediaQuery.of(context).size.width ,
              padding:const  EdgeInsets.only(left: 20,top: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  TextFormField(
                    controller: _fullNameController,
                    keyboardType: TextInputType.name,
                    maxLength: 15,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                      
                        borderSide: const BorderSide(
                          width: 4,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty)
                      {
                        return 'please enter full name';

                      }
                      return null;
                    },
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                   TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    maxLength: 15,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                      
                        borderSide: const BorderSide(
                          width: 4,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty)
                      {
                        return 'please enter password name';

                      }
                      return null;
                    },
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 20,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'abc@gmail.com',
                      border: OutlineInputBorder(
                        borderSide:const BorderSide(
                          width: 4,
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      
                    ),
                    validator: (emailvalue){
                      if(emailvalue==null || emailvalue.trim().isEmpty)
                      {
                        return 'please enter a email';

                      }
                      final regex =RegExp(_emailRegexPattern);
                      if(!regex.hasMatch(emailvalue))
                      {
                        return 'invald email address';
                      }
                      return null;
                    }
                    ,
                    
                  
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextFormField(
                    controller: _phoneController,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                      labelText: 'Phone',
                      hintText: '9800000000',
                      border: OutlineInputBorder(
                        borderSide:const BorderSide(
                          color: Colors.blue,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                
                  ),
                 const  SizedBox(
                    height: 14,
                  ),
                  ListTile(
                    leading:Image.network('https://images.unsplash.com/photo-1656778669500-7afe7f78c3d0?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    trailing: const Icon(Icons.add),
                    title: const Text('Sandesh pagal'),
                    subtitle:const  Text('sandesh is thes and baula',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState !=null)
                      {
                        if(_formKey.currentState!.validate())
                        {
                          final email =_emailController.text;
                          final password = _passwordController.text;
                          final firebaseAuthService =FirebaseAuthService();
                          firebaseAuthService.createUserWithAndPassword(email, password);
                                                
                         }
                      }
                    },
                    child: const Text('submit'),
                  ),
                    
                  ],
                ),
              ),
            ),
          );
  }

}
