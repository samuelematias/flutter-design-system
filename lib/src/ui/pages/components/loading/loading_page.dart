import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:designsystem/src/core/i18n/i18n.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  static const String route = '/components/loading';

  final bool hideSwitchMode;

  const LoadingPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'loading'.i18n(),
      hideSwitchMode: hideSwitchMode,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText('loading'.i18n()).h1(),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText('loadingTypes'.i18n()).h2(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: SelectableText(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.')
                          .h2(style: TextStyle(fontWeight: FontWeight.w200)),
                    ),
                    SizedBox(height: 10.0),
                    HighlightExample(
                      code: ''' CustomProgressIndicator()''',
                      examples: [Center(child: CustomProgressIndicator())],
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
