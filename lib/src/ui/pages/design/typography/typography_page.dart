import 'package:designsystem/src/ui/widgets/highlight/types.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';

class TypographyPage extends StatelessWidget {
  static const String route = '/design/typography';

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
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText('Typography').h1(),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText('Font sizes').h2(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: SelectableText(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.')
                          .h2(style: TextStyle(fontWeight: FontWeight.w200)),
                    ),
                    SizedBox(height: 10.0),
                    _buildTypographyExamples(
                      code: 'h1',
                      header: 1,
                      typography: TypographyType.h1,
                    ),
                    SizedBox(height: 40.0),
                    _buildTypographyExamples(
                      code: 'h2',
                      header: 2,
                      typography: TypographyType.h2,
                    ),
                    SizedBox(height: 40.0),
                    _buildTypographyExamples(
                      code: 'h3',
                      header: 3,
                      typography: TypographyType.h3,
                    ),
                    SizedBox(height: 40.0),
                    _buildTypographyExamples(
                      code: 'h4',
                      header: 4,
                      typography: TypographyType.h4,
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTypographyExamples({
    @required String code,
    @required int header,
    @required TypographyType typography,
  }) =>
      HighlightExample(
        code: _handleCode(code),
        examples: [
          HLEXText(
            text: _handleTypographyHeader('$header'),
            typography: typography,
          )
        ],
      );

  String _handleCode(String n) => '''Text('Header').$n()''';
  String _handleTypographyHeader(String h) => 'Header $h';
}
