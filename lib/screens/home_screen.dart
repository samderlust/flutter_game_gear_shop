import 'package:flutter/material.dart';
import 'package:game_gear_store/models/GearModel.dart';
import 'package:game_gear_store/widgets/item_overview.dart';
import 'package:game_gear_store/widgets/side_bar_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Hello'),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Samderlust',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/sam.jpg'),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  width: 70,
                  height: size.height,
                  padding: EdgeInsets.symmetric(vertical: 40),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SidebarItem(
                        category: "Accessories",
                        isSelected: true,
                      ),
                      SidebarItem(
                        category: "Components",
                      ),
                      SidebarItem(
                        category: "Consoles",
                      ),
                      SidebarItem(
                        category: "Games",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: size.height,
                    child: ListView.builder(
                        itemCount: gears.length,
                        itemBuilder: (BuildContext context, int index) {
                          final GearModel theGear = gears[index];
                          return ItemOverView(theGear: theGear);
                        }),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
