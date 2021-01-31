import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futter_foody/components/rounded_text_container.dart';
import 'package:futter_foody/model/restaurant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            heroSection(context),
            // Search Form
            SizedBox(height: 20),
            filterForm(context),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Popular Restaurants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              )
            ),
            recomendedRestaurants(context),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Popular Menus',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }

  Widget appBar(BuildContext context) {
    return AppBar(
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
    );
  }

  Widget heroSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Column(
        children: <Widget>[
          // Hero Section
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
        ],
      ),
    );
  }

  Widget filterForm(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Row(
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
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0)),
              style: TextStyle(fontSize: 16),
            ),
          )),
          IconButton(
            icon: SvgPicture.asset('assets/icons/icn_filter.svg'),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget recomendedRestaurants(BuildContext context) {
    return Container(
      height: 275,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 25, right: 10),
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => print(restaurants[index].name),
            child: Container(
              margin: EdgeInsets.only(right: 15, top: 20),
              height: 257,
              width: 261,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(restaurants[index].pictureId),
                  fit: BoxFit.cover
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black,
                        ],
                        stops: [
                          0.0,
                          1.0
                        ]
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 35,
                    left: 20,
                    child: Text(
                      restaurants[index].name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                  Positioned(
                    bottom: 15,
                    left: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/icn_rating.svg'),
                        SizedBox(width: 4),
                        Text(restaurants[index].rating.toString(), style: TextStyle(color: Colors.white)),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/icons/icn_mark.svg'),
                        SizedBox(width: 4),
                        Text(restaurants[index].city, style: TextStyle(color: Colors.white))
                      ],
                    ),
                  )
                ],
              ),
            )
          );
        }
      ),
    );
  }
}

var restaurants = [
  Restaurant(
      id: "fe8bbxoazddkcowlqdz",
      name: "Pangsit Express",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureId:
          "https://dicoding-restaurant-api.el.r.appspot.com/images/medium/29",
      city: "Ternate",
      rating: 4.8),
  Restaurant(
      id: "ik1zljmlf68kcowlqdz",
      name: "Ducky Duck",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureId:
          "https://dicoding-restaurant-api.el.r.appspot.com/images/medium/38",
      city: "Medan",
      rating: 4.7),
  Restaurant(
      id: "6c7bqjgi84kcowlqdz",
      name: "Bring Your Phone Cafe",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.",
      pictureId:
          "https://dicoding-restaurant-api.el.r.appspot.com/images/medium/41",
      city: "Medan",
      rating: 4.6)
];
