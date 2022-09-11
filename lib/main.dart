import 'package:flutter/material.dart';

void main() => runApp( const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool passwordVisible = false;

  @override
  void initState() {
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF7657bf), accentColor: Color(0xFFaeadb1)),
      title: 'Login Page UI', home: Scaffold(
      backgroundColor: const Color(0xFF7657bf),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            margin: const EdgeInsets.all(15),
              child: Image.asset('assets/logo.png')),
          const SizedBox(height: 20,),
          const Text('ECORP', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFff9900)),),
          Container(

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xFFffffff), boxShadow: []),
              margin: const EdgeInsets.all(40), padding: const EdgeInsets.all(15), child: Column(children: [







            TextFormField(
              keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
focusColor: Theme.of(context).primaryColor,
            fillColor: const Color(0xFFf2f1f2),


            prefixIcon: const Icon(Icons.person), labelText: 'Email', border: OutlineInputBorder(
            
                borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(),


          ),),),
            const SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.number,
              obscureText: !passwordVisible,
              decoration: InputDecoration(
              fillColor: const Color(0xFFf2f1f2),
            prefixIcon: const Icon(Icons.lock), labelText: 'Password',  suffixIcon: IconButton(
                icon: Icon(

                  passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {

                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ), border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(),), ),),
TextButton(onPressed: () {}, child: const Text('Forget Password?', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFFaeadb1),),), ),

            ElevatedButton(
style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF7657bf)),
                onPressed: () {}, child: const Text('LOGIN', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold ), )  ),
            TextButton(onPressed: () {}, child: const Text('SIGNUP', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFaeadb1),),), ),

          ],),)
        ],),
      ),),);
  }
}
