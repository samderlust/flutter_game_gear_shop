import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final String category;
  final bool isSelected;
  const SidebarItem({
    Key key,
    this.category,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 70,
        child: Stack(
          children: <Widget>[
            Center(
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  category,
                  style: TextStyle(
                    color: isSelected
                        ? Colors.blueGrey[900]
                        : Colors.blueGrey[100],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (isSelected)
              Align(
                alignment: Alignment.centerRight,
                child: Transform.translate(
                  offset: Offset(2, 0),
                  child: Container(
                    height: 30,
                    width: 4,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
