import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PageNotFoundPage extends StatelessWidget {
  static const String route = '/404-not-found';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesome.warning, size: 100),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                '404',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 80.0,
                  // color: Colors.black,
                ),
              ),
            ),
            Text(
              'Sorry, we couldn’t find that page…',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 20.0,
                // color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80.0),
              child: InkWell(
                onTap: () => _onTap(context),
                child: Text(
                  'Back to Home!',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20.0,
                    // color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(BuildContext context) => Navigator.of(
        context,
        rootNavigator: true,
      ).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (BuildContext context) => CustomTabBar(),
        ),
        (Route<dynamic> route) => false,
      );
}
