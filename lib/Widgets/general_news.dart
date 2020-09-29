import 'package:flutter/material.dart';
import 'package:global_news_app/main.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralNews extends StatefulWidget {
  @override
  _GeneralNewsState createState() => _GeneralNewsState();
}

class _GeneralNewsState extends State<GeneralNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5.0,right: 5,top:0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "https://images.unsplash.com/photo-1523206489230-c012c64b2b48?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                                      fit: BoxFit.cover,
                                      height: MediaQuery.of(context).size.height*0.18,
                                      width: 100,
                                    )),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10),
                                      child: Text(
                                          "NASA's Green Propellant Infusion Mission Deployes",
                                          style: GoogleFonts.arvo(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10),
                                      child: Text(
                                          "NASA's Green Propellant Infusion Mission (GPIM) has successfully deployed at 3:57 a.m. EDT",
                                          style: GoogleFonts.arvo(
                                              color: Colors.black54,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10),
                                      child: Text("June 24,2020",
                                          style: GoogleFonts.arvo(
                                              color: Colors.black45,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

Widget generalNewsItem() {
  return Container(
    child: InkWell(
      onTap: () {},
      child: Card(
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://images.unsplash.com/photo-1523206489230-c012c64b2b48?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80")),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Text",
                        style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),

              // new Text(filteredArticle[index]
              //     .categories
              //     .toString()),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Icon(Icons.date_range),
                  ),
                  Text(
                    "",
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
