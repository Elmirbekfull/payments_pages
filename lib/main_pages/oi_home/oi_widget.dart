



import 'package:flutter/material.dart';

class OMainWidget extends StatefulWidget {
  const OMainWidget({super.key});

  @override
  State<OMainWidget> createState() => _OMainState();
}

class _OMainState extends State<OMainWidget> {
  int _selectedTab = 0;
  void onSelectedTab(int index){
    setState(() {
      _selectedTab = index;
    });

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 900, 
              decoration: const BoxDecoration(
                color:  Color.fromARGB(255, 32, 31, 31),              
              ),
              child: const Column(
                children: [
                  SizedBox(height: 10,),
                   Text("+996 701 468 346", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                
              ),),
      
      
      
      
      
                ],
              )
            ),
            _UserWidgets(),
            _TarifWidgets(),
            SizedBox(height: 20,),
            _AdvertisingWidget(),
            SizedBox(height: 15,),
            _MyNumberWidget(),
            SizedBox(height: 15,),
            _SaimaTelecomWidget(),
            SizedBox(height: 15,),
            _TarifsWidget(),
              SizedBox(height: 15,),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedTab,
      //   backgroundColor: const Color.fromARGB(255, 32, 31, 31),  
      //   selectedItemColor: Colors.pink,
      //   unselectedItemColor: Colors.grey,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),
      //     label: "Кабинет"
      //     ),
      //      BottomNavigationBarItem(icon: Icon(Icons.home),
      //     label: "O!Деньги"
      //     ),
      //      BottomNavigationBarItem(icon: Icon(Icons.home),
      //     label: "O!Маркет"
      //     ),
      //      BottomNavigationBarItem(icon: Icon(Icons.menu),
      //     label: "Меню"
      //     ),
      //   ],
      //   onTap: onSelectedTab     
      // ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 32, 31, 31),  
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Кабинет"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.credit_score),
          label: "O!Деньги"
          ),
            BottomNavigationBarItem(icon: Icon(Icons.shop_two),
          label: "O!Маркет"
          ),
            BottomNavigationBarItem(icon: Icon(Icons.menu),
          label: "Меню"
          ),
          //   BottomNavigationBarItem(icon: Icon(Icons.book),
          // label: "Манга"
          // ),
        ],
        onTap: (index){
          onSelectedTab(index);
        }   
      ),
    );
  }
}





class _UserWidgets extends StatelessWidget {
  const _UserWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/avatar1.png"),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 32, 31, 31),  
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Баланс", style: TextStyle(
                color: Colors.grey
              ),),
              Text("75,78 сом", style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),)
            ],
          ),
        )
      ],
    );
  }
}




class _TarifWidgets extends StatelessWidget {
  const _TarifWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 60,
        width: 360,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const  Color.fromARGB(255, 32, 31, 31),  
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Мугалим 200 PRO", style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),),
            Text("200 сом будет списано 30.07.2023", style: TextStyle(
              color: Colors.grey
            ),),
          ],
        ),
      ),
    );
  }
}



class _AdvertisingWidget extends StatelessWidget {
  const _AdvertisingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 150,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 32, 31, 31),  
    
        ),
       child: Image.asset("assets/images/r3.png", 
       fit: BoxFit.cover,
       ),
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}

class _MyNumberWidget extends StatelessWidget {
  const _MyNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
          height: 50,
          width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 32, 31, 31),  
        ),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(Icons.person_add, color: Colors.white, size: 18,),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:  Text("Добавить номер", style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500           
                      ),),        
            ), 
            SizedBox(width: 160,),

            Icon(Icons.add, color: Colors.white, size: 18,)
          ],
        ),
      ),
    );
  }
}











class _SaimaTelecomWidget extends StatelessWidget {
  const _SaimaTelecomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          height: 70,
          width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 32, 31, 31), 
        ),
        child: Row(
          children: [
            Image.asset("assets/images/s2.png"),          
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Saima Telecom", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),),
                  Text("Проводной интернет +TV", style: TextStyle(
                    color: Colors.grey
                  ),)
                ],
              ),
            ),
            SizedBox(width: 105,),
            Icon(Icons.chevron_right_rounded, color: Colors.white,)

          ],
        ),     
      ),
    );
  }
}





class _TarifsWidget extends StatelessWidget {
  const _TarifsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            height: 170,
            width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 32, 31, 31), 
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.call, color: Colors.white, size: 18,),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Тарифы",  style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500    
                          ),),
                ),
                SizedBox(width: 215,),
                Icon(Icons.chevron_right_rounded, color: Colors.white,)
              ],
            ),
            Row(
              children: [
                SizedBox(width: 40,),
                Text("_____________________________________________________",
                 style: TextStyle(color: Colors.grey),),
              ],
            ),
          
            SizedBox(height: 10,),
              Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.local_activity_outlined, color: Colors.white, size: 18,),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Услуги",  style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500    
                          ),),
                ),
                SizedBox(width: 223,),
                Icon(Icons.chevron_right_rounded, color: Colors.white,)
              ],
            ),
              // SizedBox(height: 20,),
               Row(
              children: [
                SizedBox(width: 40,),
                Text("_____________________________________________________",
                 style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(height: 10,),
              Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.call, color: Colors.white, size: 18,),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Детализация",  style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500    
                          ),),
                ),
                SizedBox(width: 180,),
                Icon(Icons.chevron_right_rounded, color: Colors.white,)
              ],
            ),
    
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 50),
            //   child: const Text("__________________________", style: TextStyle(
            //     color: Colors.grey
            //   ),),
            // )
          ],
        ),
      ),
    );
  }
}


