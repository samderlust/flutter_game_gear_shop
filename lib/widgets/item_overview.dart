import 'package:flutter/material.dart';
import 'package:game_gear_store/models/GearModel.dart';
import 'package:game_gear_store/screens/gear_detail.dart';

class ItemOverView extends StatelessWidget {
  const ItemOverView({
    Key key,
    @required this.theGear,
  }) : super(key: key);

  final GearModel theGear;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GearDetail(
                theGear: theGear,
              ),
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Hero(
            tag: theGear.name,
            child: Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 170,
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
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              theGear.name,
              style: TextStyle(
                color: Colors.blueGrey[200],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "${theGear.price}\$",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
