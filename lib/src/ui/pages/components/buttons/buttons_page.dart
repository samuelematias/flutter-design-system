import 'package:designsystem/src/ui/pages/components/buttons/helper/types.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:designsystem/src/core/i18n/i18n.dart';
import 'package:designsystem/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  static const String route = '/components/buttons';

  final bool hideSwitchMode;

  const ButtonsPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'buttons'.i18n(),
      hideSwitchMode: hideSwitchMode,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText('buttons'.i18n()).h1(),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText('buttonsTypes'.i18n()).h2(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: SelectableText(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.')
                          .h2(style: TextStyle(fontWeight: FontWeight.w200)),
                    ),
                    _buildPrimaryButtonSection(),
                    _buildSecondaryButtonSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPrimaryButtonSection() => Column(
        children: [
          SizedBox(height: 10.0),
          HighlightExample(
            examplesTitle: 'PrimaryButton ' + 'enabled'.i18n(),
            examples: [
              PrimaryButton(
                label: 'Click me',
                onPressed: () {},
              ),
            ],
            code: _handleCode(
              buttonType: 'PrimaryButton',
            ),
          ),
          SizedBox(height: 40.0),
          HighlightExample(
            examplesTitle: 'PrimaryButton ' + 'disabled'.i18n(),
            examples: [
              PrimaryButton(
                label: 'Click me',
                onPressed: () {},
                disabled: true,
              ),
            ],
            code: _handleCode(
              buttonType: 'PrimaryButton',
              buttonState: ButtonStateType.disabled,
            ),
          ),
          SizedBox(height: 40.0),
          HighlightExample(
            examplesTitle: 'PrimaryButton ' + 'loading'.i18n(),
            examples: [
              PrimaryButton(
                label: 'Click me',
                onPressed: () {},
                loading: true,
              ),
            ],
            code: _handleCode(
              buttonType: 'PrimaryButton',
              buttonState: ButtonStateType.loading,
            ),
          ),
          SizedBox(height: 40.0),
        ],
      );

  Widget _buildSecondaryButtonSection() => Column(
        children: [
          SizedBox(height: 10.0),
          HighlightExample(
            examplesTitle: 'SecondaryButton ' + 'enabled'.i18n(),
            examples: [
              SecondaryButton(
                label: 'Click me',
                onPressed: () {},
              ),
            ],
            code: _handleCode(
              buttonType: 'SecondaryButton',
            ),
          ),
          SizedBox(height: 40.0),
          HighlightExample(
            examplesTitle: 'SecondaryButton ' + 'disabled'.i18n(),
            examples: [
              SecondaryButton(
                label: 'Click me',
                onPressed: () {},
                disabled: true,
              ),
            ],
            code: _handleCode(
              buttonType: 'SecondaryButton',
              buttonState: ButtonStateType.disabled,
            ),
          ),
          SizedBox(height: 40.0),
          HighlightExample(
            examplesTitle: 'SecondaryButton ' + 'loading'.i18n(),
            examples: [
              SecondaryButton(
                label: 'Click me',
                onPressed: () {},
                loading: true,
              ),
            ],
            code: _handleCode(
              buttonType: 'SecondaryButton',
              buttonState: ButtonStateType.loading,
            ),
          ),
          SizedBox(height: 40.0),
        ],
      );

  String _handleCode({
    @required String buttonType,
    ButtonStateType buttonState = ButtonStateType.enabled,
  }) {
    switch (buttonState) {
      case ButtonStateType.enabled:
        return ''' $buttonType(
    label: 'Click me',
    onPressed: () {},
  ),''';
        break;
      case ButtonStateType.disabled:
        return ''' $buttonType(
    label: 'Click me',
    disabled: true,
    onPressed: () {},
  ),''';
        break;
      case ButtonStateType.loading:
        return ''' $buttonType(
    label: 'Click me',
    loading: true,
    onPressed: () {},
  ),''';
        break;
      default:
        return ''' $buttonType(
    label: 'Click me',
    onPressed: () {},
  ),''';
    }
  }
}
