import 'package:flutter/material.dart';
import 'package:game_gear_store/models/GearModel.dart';

class GearDetail extends StatelessWidget {
  final GearModel theGear;

  const GearDetail({Key key, this.theGear});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: theGear.name,
                child: Container(
                  height: size.height * .35,
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: size.height * .35,
                          width: 170,
                          decoration: BoxDecoration(
                              color: theGear.color,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                        ),
                      ),
                      Image.asset(
                        theGear.img,
                        fit: BoxFit.cover,
                        // height: 500,
                        height: size.height * .35,
                      ),
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  theGear.cat,
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  theGear.name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "${theGear.price}\$",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                  ),
                ),
                SizedBox(height: 20),
                Text(theGear.desc),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                  color: theGear.color,
                  onPressed: () {},
                  child: Container(
                    width: size.width * .8,
                    height: 60,
                    child: Center(
                        child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    )),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
