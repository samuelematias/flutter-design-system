import 'package:designsystem/src/ui/components/buttons/helper/types.dart';
import 'package:designsystem/src/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:designsystem/src/core/theme/theme.dart';

class ButtonsPage extends StatelessWidget {
  final bool hideSwitchMode;

  const ButtonsPage({
    this.hideSwitchMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      pageTitle: 'Buttons',
      hideSwitchMode: hideSwitchMode,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText('Buttons').h1(),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText('Buttons types').h2(),
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
            examplesTitle: 'PrimaryButton Enabled',
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
            examplesTitle: 'PrimaryButton Disabled',
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
            examplesTitle: 'PrimaryButton Loading',
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
            examplesTitle: 'SecondaryButton Enabled',
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
            examplesTitle: 'SecondaryButton Disabled',
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
            examplesTitle: 'SecondaryButton Loading',
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
