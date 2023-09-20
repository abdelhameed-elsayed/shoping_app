import 'package:division/division.dart';
import 'package:flutter/material.dart';
import '/screens/accountsettings.dart';
import '/screens/checkout.dart';
import 'package:page_transition/page_transition.dart';

class UserSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: UserSettingsState()));
  }
}

class UserSettingsState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Parent(
        style: ParentStyle(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Settings(),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionsRow extends StatelessWidget {
  Widget _buildActionsItem(String title, IconData icon) {
    return Parent(
      style: ParentStyle(),
      child: Column(
        children: <Widget>[
          Parent(
            style: ParentStyle(),
            child: Icon(
              icon,
              size: 20,
              color: Color(0xFF42526F),
            ),
          ),
          Text(
            title,
            style: actionsItemTextStyle,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _buildActionsItem('Waiting', Icons.lock_clock),
        _buildActionsItem('Processing', Icons.local_activity),
        _buildActionsItem('Submitted', Icons.check_circle),
        _buildActionsItem('Pre-order', Icons.repeat),
      ],
    );
  }

  final Parent actionsItemIconStyle = Parent(style: ParentStyle());

  final Parent actionsItemStyle = Parent(style: ParentStyle());

  final TextStyle actionsItemTextStyle =
      TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 13);
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: ParentStyle(),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("Tiklandi");
            },
            child: SettingsItem(Icons.brightness_1, '#9F6083', 'Orders',
                'All your orders are listed.', () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: Checkout(),
                ),
              );
            }),
          ),
          SettingsItem(Icons.settings_sharp, '#FDB78B', 'Account Settings',
              'General ettings for your account', () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: AccountSettings(),
              ),
            );
          }),
          SettingsItem(Icons.tag, '#57CFE2', 'Discount coupons',
              'Coupons you want to use for your shopping.', () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: Checkout(),
              ),
            );
          }),
          SettingsItem(Icons.message_rounded, '#606B7E', 'My Comments',
              'Your comments for products', () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: Checkout(),
              ),
            );
          }),
          SettingsItem(Icons.spellcheck, '#FB7C7A', 'Notifications',
              'Notifications in the app', () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: Checkout(),
              ),
            );
          }),
          SettingsItem(
              Icons.help_center, '#24ACE9', 'Help', 'See here for help', () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: Checkout(),
              ),
            );
          }),
        ],
      ),
    );
  }

  final Parent settingsStyle = Parent(style: ParentStyle());
}

class SettingsItem extends StatefulWidget {
  final IconData icon;
  final String iconBgColor;
  final String title;
  final String description;
  final Function touchItem;

  SettingsItem(this.icon, this.iconBgColor, this.title, this.description,
      this.touchItem());

  @override
  _SettingsItemState createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
        style: ParentStyle(),
        gesture: Gestures()
          ..onTap(widget.touchItem())
          ..onTapDown((details) => setState(() => pressed = true))
          ..onTapUp((details) => setState(() => pressed = false))
          ..onTapCancel(() => setState(() => pressed = false)),
        child: Row(
          children: <Widget>[
            Parent(
              style: ParentStyle(),
              child: Icon(
                widget.icon,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.title,
                  style: itemTitleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.description,
                  style: itemDescriptionTextStyle,
                ),
              ],
            )
          ],
        ));
  }

  final Parent settingsItemStyle = Parent(style: ParentStyle());

  final Parent settingsItemIconStyle = Parent(style: ParentStyle());

  final TextStyle itemTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  final TextStyle itemDescriptionTextStyle = TextStyle(
      color: Colors.black26, fontWeight: FontWeight.bold, fontSize: 12);
}
