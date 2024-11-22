

import 'package:flutter/material.dart';
import 'package:calc_flutter_demo/_appbar.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart'; // Dosyayı içe aktardık

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
   final TextEditingController _controller = TextEditingController();
   final TextEditingController _controller2 = TextEditingController();

  String? _inputValue1; // Değeri saklayacak değişken
  String? _inputValue2; // Değeri saklayacak değişken
  int? num1;
  int? num2;
  int? result;





  @override
    void dispose() {
    _controller.dispose(); // Kontrolcüyü temizle
    super.dispose();
  }

  void _getSum() {
    setState(() {
      _inputValue1=_controller.text;
      _inputValue2=_controller2.text;
      num1=int.parse(_inputValue1!);
      num2=int.parse(_inputValue2!);
      result=(num1!+num2!);



  
      
    });
  }
   void _getExtraction() {
    setState(() {
   _inputValue1=_controller.text;
      _inputValue2=_controller2.text;
      num1=int.parse(_inputValue1!);
      num2=int.parse(_inputValue2!);
      result=(num1!-num2!);


      
    });
  }
  void _getMultiplication()
  {
    setState(() {
        _inputValue1=_controller.text;
      _inputValue2=_controller2.text;
      num1=int.parse(_inputValue1!);
      num2=int.parse(_inputValue2!);
      result=(num1!*num2!);


      
    });
  }
  
  @override
  Widget build(BuildContext context) {

   
    
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        
        appBar: const MyAppBar(),
        body: Center(
          
          child: SingleChildScrollView(
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.asset('assets/logo.png', height: 200),
                SizedBox(
                  width: 300,
                  child: TextField(
                  controller: _controller, 
                  textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      
                      
                    
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      hintText: "Sayı 1",
                      
                      
                  
                      
                    ),
                  ),
                  
                ),
                const SizedBox(height: 20,),
                SizedBox(
                    width: 300,
                  child: TextField(
                  controller: _controller2, 
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.white,                              
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(24)
                      ),
                      hintText: "Sayı 2",
                    
                      
                      
                      
                      
                  
                      
                    ),
                  )
                ),
                
                const SizedBox(height: 50,),
                
                 Row(
                   children: [
                    const SizedBox(width: 20,),
                     SizedBox(
                      width: 70,
                       child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: HexColor("#FFB900")
                        ),
                        onPressed: _getSum, 
                        child: const Text("+"),
                        
                        
                      ),
                     ),
                        const SizedBox(width: 20,),
                     SizedBox(
                      width: 70,
                       child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: HexColor("#FFB900")
                        ),
                        onPressed: _getExtraction, 
                        child: const Text("-"),
                        
                        
                      ),
                     ),
                        const SizedBox(width: 20,),
                     SizedBox(
                      width: 70,
                       child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: HexColor("#FFB900")
                        ),
                        onPressed: _getSum, 
                        child: const Text("+"),
                        
                        
                      ),
                     ),
                        const SizedBox(width: 20,),
                     SizedBox(
                      width: 70,
                       child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: HexColor("#FFB900")
                        ),
                        onPressed: _getMultiplication, 
                        child: const Text("X"),
                        
                        
                      ),
                     )
                   ],
                 ),
               const  SizedBox(height: 16.0),
                Text('Sonuç: $result ',
                style: TextStyle(
                  color: HexColor("#FFB900"),
                  fontSize: 50
                  
                ) ,), 
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
