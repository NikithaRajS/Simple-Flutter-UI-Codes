import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewLogin extends StatefulWidget {
  @override
  _NewLoginState createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8bW91bnRhaW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.red[300]])),
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Icon(
              Icons.favorite,
              size: 60,
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("heart",
                    style: GoogleFonts.barlowCondensed(
                        fontSize: 40, color: Colors.white)),
                Text("link",
                    style: GoogleFonts.barlowCondensed(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 200,
            ),
            FlatButton(
              minWidth: 300,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white)),
              child: Text("LOGIN",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              color: Colors.white,
              minWidth: 300,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white)),
              child: Text("SIGN UP",
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            )
          ],
        ),
      ),
    );
  }
}
