import 'package:flutter/material.dart';
import 'package:global_news_app/Screens/Category_Screen.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerCategoriesItem extends StatefulWidget {
  final String categoryName;
  final bool isSelected;
  DrawerCategoriesItem({Key key, @required this.categoryName,this.isSelected})
      : super(key: key);
  @override
  _DrawerCategoriesItemState createState() =>
      _DrawerCategoriesItemState(categoryName,isSelected);
}

class _DrawerCategoriesItemState extends State<DrawerCategoriesItem> {
  final String categoryName;
  final bool isSelected;
  _DrawerCategoriesItemState(this.categoryName,this.isSelected);
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: InkWell(
        highlightColor: Colors.black12,
        onTap: () {
          print("$categoryName");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(title: categoryName,)));
        },
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("$categoryName",
                    style: GoogleFonts.teko(
                        fontSize: 22,
                        color: isSelected==true? Colors.red:Colors.black,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
