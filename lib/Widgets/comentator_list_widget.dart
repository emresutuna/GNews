import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentatorListWidget extends StatefulWidget {
  final Color colors;
  CommentatorListWidget({Key key,@required this.colors}):super(key:key);
  @override
  _CommentatorListWidgetState createState() => _CommentatorListWidgetState(colors);
}

class _CommentatorListWidgetState extends State<CommentatorListWidget> {
  final Color colors;
  _CommentatorListWidgetState(this.colors);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        height: MediaQuery.of(context).size.height*0.18,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color:colors),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("David Brooks",
                        style: GoogleFonts.arvo(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 3,
                    ),
                    Flexible(
                        child: Text(
                            "Artificial intelligence is by turns terrifying, overhyped",
                            style: GoogleFonts.arvo(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600))),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "June 24,2020",
                      style: GoogleFonts.arvo(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
               SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
