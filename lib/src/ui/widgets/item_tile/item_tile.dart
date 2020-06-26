import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final GestureTapCallback onTap;

  const ItemTile({
    @required this.icon,
    @required this.title,
    this.subtitle = '',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100.0,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(icon, size: 60.0),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        // color: Colors.black,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 16.0,
                          // color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
