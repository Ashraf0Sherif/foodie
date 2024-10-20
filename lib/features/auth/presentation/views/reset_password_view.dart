import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/utils/extensions.dart';

import '../../../../core/constants.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/widgets/custom_elevated_button.dart';
import '../../../../core/utils/widgets/custom_text_form_field.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
          child: Stack(
            children: [
              Form(
                key: formKey,
                autovalidateMode: autoValidateMode,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SvgPicture.asset(
                            AssetsData.kLogo,
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    const Text(
                      'Forgot Password?',
                      style: FontStyles.kTitleBold,
                    ),
                    const Text(
                      "Don’t worry!",
                      style: FontStyles.kSubTitleRegular,
                    ),
                    const Text(
                      "You can easily reset your password ",
                      style: FontStyles.kSubTitleRegular,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      emailController: _emailController,
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          //TODO : Login Logic
                        } else {
                          setState(() {
                            autoValidateMode = AutovalidateMode.always;
                          });
                        }
                      },
                      text: 'RESET',
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: -5,
                top: 40,
                child: GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Image.asset(
                      AssetsData.kBackButton,
                      width: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
