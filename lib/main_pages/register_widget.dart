


import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 21, 21),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 21, 21),
        elevation: 0.0,
      ),
      // appBar: AppBar(
      //   leading:  Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 11),
      //     child: IconButton(
      //       onPressed: (){
      //         Navigator.of(context).pop("/");
      //       },
      //      icon: Icon(Icons.arrow_back_ios, size: 25,)),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            const Text("Вход", style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 20,),
            const Text("Введите номер телефона", style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.2)
              ),
              child: const TextField(
                cursorColor: Colors.grey,
            
                decoration: InputDecoration(
                  hintText: "+ 996",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                  ),

                             
                  border: UnderlineInputBorder(                   
                  )
                ),
              ),
            ),
             SizedBox(height: 15,),
             const Text("Подключить O!TV-*750*1#(3 сома в день)", style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),),
            const Text('Подключить "O!Кино"-755*1#(3,5 сома в день)', style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  ),),
            const Text("Восстановить пароль-*750*5#", style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),),
            const Row(
              children: [
                Text("Правила предостовления услыги доступны ", style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),),
                Text("по сслыке", style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400
                ),)
              ],
            ),
            const SizedBox(height: 20,),
            const Text('Посмотреть пароль можно так же в приложений "Мой O!" в разделе "Меню" ', style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),),
            SizedBox(height: 270,),
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
                        Navigator.of(context).pushNamed("/third");             
                      },
                     child: const Text("Далее", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                     ),)),  
          ),     
        ]),
      ),
    );
  }
}