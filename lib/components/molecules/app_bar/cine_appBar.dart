import 'package:flutter/material.dart';

class CineAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? titleWidget;
  final bool? isCenter;
  final List<Widget>? actionWidgets;
  final Widget? leadingWidget;

  const CineAppBar(
      {Key? key,
      this.titleWidget,
      this.isCenter,
      this.actionWidgets,
      this.leadingWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: new IconThemeData(color: Colors.white),
      leading: leadingWidget ?? null,
      elevation: 5,
      backgroundColor: Color(0xff2b3248),
      centerTitle: isCenter,
      title: titleWidget,
      actions: actionWidgets,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
