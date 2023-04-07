import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: contador(),
  ));
}
class contador extends StatefulWidget {
  const contador({super.key});


 @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {

    int count = 0;

void increment() {
  if(count < 15)
setState(() {
  count++;
});
  print(count);
}
void decrement() {
  if(count > 0)
  setState(() {
     count--;
  });
  print(count);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 110, 110),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("images/image.png"),
          fit: BoxFit.cover,
          
        )
        ),
        child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count < 15 ?"Pode entrar!": "Lotado", style: TextStyle(fontSize: 30,color:Color.fromARGB(255, 230, 230, 230)),),
                Text(count.toString() , style: TextStyle(fontSize: 30,color:Color.fromARGB(255, 255, 254, 254))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      TextButton(
                      onPressed: increment,
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 93, 179, 236),
                        fixedSize: Size(100, 80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                        )
                      ),
                     child: Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.black)),
                     ),

                    SizedBox(width: 30,),

                    TextButton(
                      onPressed: decrement,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(100, 80),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                        )
                      ),
                     child: Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.black)),
                     ),
                    
                  ],
                )
        ],
        ),
      ),
    );
  }
}

