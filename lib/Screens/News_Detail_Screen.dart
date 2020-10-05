import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:global_news_app/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsDetailScreen extends StatefulWidget {
  @override
  _NewsDetailScreenState createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    buildImage(context),
                    buildImageBg(context),
                    Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.28),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40))),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              buildTitle(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 10),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                          "Akoi, wearing a leathery black head wrap and gold iindzila rings around her necks,stares out of the frame as Shudu,identically styled,hovers behind her,restin a manicured finger on Akoi's shoulder.Although the real Akoi's complexion varies with the light,here she and Shudu both spot the same polished skin tone,as if painted from the same palette.",
                                          style: GoogleFonts.arvo(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54,
                                              height: 1.8)),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20, right: 20, bottom: 20),
                                child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width: MediaQuery.of(context).size.width,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: FadeInImage.memoryNetwork(
                                          placeholder: kTransparentImage,
                                          image:
                                              "https://images.unsplash.com/photo-1482501157762-56897a411e05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                                          fit: BoxFit.cover,
                                        ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 0),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                          "Wilson seems more interested in muddying the already blurred lines berween reality and artifice on Instagram",
                                          style: GoogleFonts.arvo(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54,
                                              height: 1.8)),
                                    )
                                  ],
                                ),
                              ),
                              buildShareRow(),
                              buildRelatedPostText(),
                              Container(
                                height: 300,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    buildRelatedPostCard(context),
                                    buildRelatedPostCard(context),
                                    buildRelatedPostCard(context),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    buildAppBar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildRelatedPostCard(BuildContext context) {
    return Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 20),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.25,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: FadeInImage.memoryNetwork(
                                            placeholder: kTransparentImage,
                                            image:
                                                "https://images.unsplash.com/photo-1463100099107-aa0980c362e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.25,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                colors: [
                                                  Colors.black26,
                                                  Colors.black26,
                                                  Colors.black26,
                                                  Colors.black26,
                                                  Colors.black26,
                                                  Colors.black26,
                                                ]),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                 Text(
                                "Dancers Live in a worl of the fear",
                                style: GoogleFonts.arvo(
                                    color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Row(
                                children: [
                                  Text(
                                    timeAgo(DateTime.parse(
                                              "2020-10-05T09:24:00Z"))
                                        .toString()
                                        .replaceAll("hours ago", "saat önce"),
                                    style: GoogleFonts.arvo(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                          ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
  }

  Padding buildRelatedPostText() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 10),
            child: Row(
              children: [
                Text("Related Posts",
                    style: GoogleFonts.arvo(
                        fontSize: 16,
                        height: 1.6,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.red,
      child: FadeInImage.memoryNetwork(
          fit: BoxFit.cover,
          placeholder: kTransparentImage,
          image:
              "https://images.unsplash.com/photo-1580039126722-282d758e1072?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80"),
    );
  }

  Container buildImageBg(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black38,
              Colors.black38,
              Colors.black38,
              Colors.black38,
              Colors.black26,
              Colors.black26,
              Colors.black26,
            ]),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    timeAgo(DateTime.parse("2020-10-05T09:24:00Z"))
                        .toString()
                        .replaceAll("hours ago", "saat önce"),
                    style: GoogleFonts.arvo(color: Colors.white, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
      child: Row(
        children: [
          Flexible(
              child: Text(
            "Shudu Gram Is a White Man's Digital Projection of Real-Life Black Womanhood",
            style: GoogleFonts.arvo(
                fontSize: 16, height: 1.6, fontWeight: FontWeight.w600),
          )),
        ],
      ),
    );
  }

  Column buildShareRow() {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 10),
          child: Row(
            children: [
              Text("Share this Post",
                  style: GoogleFonts.arvo(
                      fontSize: 16, height: 1.6, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, top: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.blue[900],
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      EvaIcons.facebook,
                      color: Colors.blue[800],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text("facebook",
                        style: GoogleFonts.arvo(
                            fontSize: 12,
                            color: Colors.white,
                            height: 1.6,
                            fontWeight: FontWeight.w600))
                  ],
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.blueAccent,
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      EvaIcons.twitter,
                      color: Colors.blueAccent[700],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text("twitter",
                        style: GoogleFonts.arvo(
                            fontSize: 12,
                            color: Colors.white,
                            height: 1.6,
                            fontWeight: FontWeight.w600))
                  ],
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.pink,
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      EvaIcons.camera,
                      color: Colors.pink[200],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text("Instagram",
                        style: GoogleFonts.arvo(
                            fontSize: 12,
                            color: Colors.white,
                            height: 1.6,
                            fontWeight: FontWeight.w600))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildAppBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Fashion",
          style: GoogleFonts.teko(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            EvaIcons.arrowBack,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  String timeAgo(DateTime date) {
    return timeago.format(date, allowFromNow: true, locale: 'tr');
  }
}
