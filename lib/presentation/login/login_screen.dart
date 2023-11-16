import 'package:cyber_bee/constants/constants.dart';
import 'package:cyber_bee/domain/login_validation.dart';
import 'package:cyber_bee/presentation/auth/phone_number/phone_number.dart';
import 'package:cyber_bee/presentation/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ValueNotifier<bool> _saveLogin = ValueNotifier<bool>(false);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundBlackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                style: MyTextStyles.h4,
                controller: _userNameController,
                decoration: myFormFieldInputDecoration(
                  icon: CupertinoIcons.phone,
                  hintText: 'Username',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username";
                  }
                  return null;
                },
              ),
              k30Height,
              TextFormField(
                style: MyTextStyles.h4,
                controller: _passwordController,
                decoration: myFormFieldInputDecoration(
                  icon: Icons.lock_person,
                  hintText: 'Password',
                ),
              ),
              k10Height,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password',
                  style: MyTextStyles.h5.copyWith(
                    fontSize: 10,
                  ),
                ),
              ),
              k10Height,
              Transform.scale(
                scale: 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Remeber me',
                      style: MyTextStyles.h6,
                    ),
                    k10Width,
                    Container(
                      padding: const EdgeInsets.all(1),
                      width: 45,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color(0xFF6C63FF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: ValueListenableBuilder<bool>(
                        valueListenable: _saveLogin,
                        builder: (context, v, _) {
                          return Switch(
                            activeColor: MyColors.primaryRedColor,
                            activeTrackColor: MyColors.backgroundBlackColor,
                            inactiveTrackColor: MyColors.backgroundBlackColor,
                            trackOutlineColor: MaterialStateProperty.all(
                              MyColors.backgroundBlackColor,
                            ),
                            trackOutlineWidth:
                                const MaterialStatePropertyAll(10),
                            splashRadius: 5,
                            value: _saveLogin.value,
                            onChanged: (value) {
                              _saveLogin.value = !_saveLogin.value;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              k30Height,
              k10Height,
              Center(
                child: MyCustomButton(
                  function: () async => await ValidateLogin.validate(
                    context: context,
                    formKey: _formKey,
                    username: _userNameController.text,
                    password: _passwordController.text, isAutoLogin: _saveLogin.value,
                  ),
                  text: 'Login',
                ),
              ),
              k30Height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account ? ',
                    style: MyTextStyles.h6.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AuthPhoneScreen(),
                      ),
                    ),
                    child: Text(
                      'register here',
                      style: MyTextStyles.h2.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
