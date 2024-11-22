import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
     
      flexibleSpace: Container(
         
        alignment: Alignment.center, 
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
           const Icon(
              Icons.calculate,
              size: 25,
              color: Colors.black,
            ),
            const SizedBox( width: 10,),
            Text(
              'Flutter Calculator',
              style: GoogleFonts.pacifico(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: HexColor("FFB900"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90); // Yüksekliği ayarlayın
}
