import 'package:actual/common/const/colors.dart';
import 'package:actual/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

import '../../common/component/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Title(),
            _SubTitle(),
            Image.asset(
              'asset/img/misc/logo.png',
              width: MediaQuery.of(context).size.width / 3 * 2,
            ),
            CustomTextFormField(
              hintText: '이메일을 입력해 주세요.',
              onChanged: (String value) {},
            ),
            CustomTextFormField(
              hintText: '비밀번호를 입력해 주세요.',
              obscureText: true,
              onChanged: (String value) {},
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: PRIMARY_COLOR,
                foregroundColor: Colors.white,
              ),
              child: Text(
                '로그인',
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text(
                '회원가입',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '이메일과 비밀번호를 입력해서 로그인 해주세요!\n오늘도 성공적인 주문이 되길 :)',
      style: TextStyle(
        fontSize: 16.0,
        color: BODY_TEXT_COLOR,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '환영합니다!',
      style: TextStyle(
        fontSize: 34.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
