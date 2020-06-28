import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';

class TypographyPage extends StatelessWidget {
  final bool hideSwitchMode;

  const TypographyPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Typography',
      hideSwitchMode: hideSwitchMode,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: SelectableText('Typography').h1(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: SelectableText('Font sizes').h2(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SelectableText(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.')
                          .h2(style: TextStyle(fontWeight: FontWeight.w200)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: HighlightCode(code: '''Text('Pomodoro').h1()'''),
                    ),
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
