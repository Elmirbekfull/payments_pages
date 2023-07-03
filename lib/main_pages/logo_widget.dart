


import 'package:flutter/material.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  void nextPage(){
    Navigator.of(context).pushNamed("/second");
    setState(() {
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 21, 21),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 140,),
            Image.asset("assets/images/logo.png"),
            const SizedBox(height: 110,),
                   Container(
            height: 40,
            width: 320,
            decoration: const BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: 
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.pink)
                      ),
                      onPressed: (){         
                        nextPage();          
                      },
                     child: const Text("Вход", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                     ),)),  
          ),     
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}