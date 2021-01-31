import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futter_foody/components/rounded_text_container.dart';

class HomePage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: IconButton(
            icon: SvgPicture.asset('assets/icons/icn_burger.svg'),
            onPressed: () {},
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/icn_notification.svg'),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Foody',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Discover the great places to eat around you!',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 4),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Find your favorite Resto and Food',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: RoundedTextContainer(
                    borderWidth: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0)),
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/icons/icn_filter.svg'),
                  onPressed: () {},
                )
              ],
            ),
            // SizedBox(height: 30),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Text(
            //     'Popular Restaurant',
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //   ),
            // ),
            // SizedBox(height: 20),
            // SizedBox(height: 30),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Text(
            //     'Favorite Menu',
            //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
