import 'package:flutter/material.dart';
import 'package:global_news_app/Screens/News_Detail_Screen.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesListItem extends StatefulWidget {
  final String image;
  final String text;
  CategoriesListItem({Key key, @required this.image, this.text}) : super(key: key);
  @override
  _CategoriesListItemState createState() => _CategoriesListItemState(image,text);
}

class _CategoriesListItemState extends State<CategoriesListItem> {
  final String image;
  final String text;
  _CategoriesListItemState(this.image,this.text);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetailScreen()));
      },
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage("$image"))),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: 130,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black45,
                          Colors.black45,
                          Colors.black45,
                          Colors.black45,
                          Colors.black38,
                          Colors.black38,
                          Colors.black38,
                        ]),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("$text",
                          style: GoogleFonts.arvo(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("2 hours ago",
                          style: GoogleFonts.arvo(
                              color: Colors.white70,
                              fontSize: 9,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
