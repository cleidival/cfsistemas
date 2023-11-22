import 'dart:ui';

import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      body: Center(
       
        child: Column(         
          mainAxisAlignment: MainAxisAlignment.center,          
          children: <Widget>[                        
            TextInputMain(Icon(Icons.person), 'Login *', 'Login'),
            TextInputMain(Icon(Icons.key), 'Senha *', 'Senha', true ),
            SizedBox(height: 10,),                        
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
  Widget TextInputMain(Icon myIcon, String hintText, String labelText, [bool password=false]) {
    return Container(
              padding: const EdgeInsets.only(left: 10, top: 2, right: 10, bottom: 2),
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),                
                border: Border.all(
                  width: 1,
                ),
              ),
              child: TextFormField(
                obscureText: password,                
                decoration: InputDecoration(                                
                  border: InputBorder.none,
                  icon: myIcon,
                  hintText: hintText,
                  labelText: labelText,                      
                ),              
                validator: (String? value){
                  if(value.toString().isEmpty){
                    return 'Password is required';
                  }
                  return null;                
                },
              ),      
    );
  }
}
