import 'package:flutter/material.dart';

class SocialBottomSheet extends StatelessWidget {
  const SocialBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 12),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        height: 160,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                " -----  Sign with  -----",
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.abc,
                          color: Color(0xFF3b5998),
                        )),
                    const Text("Facebook")
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.abc, color: Color(0xFFdd4b39))),
                    const Text("Google")
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.abc, color: Color(0xFF00aced))),
                    const Text("Twitter")
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
