import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/utils_exports.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../core/responsive/breakpoints.dart';
import 'body/appbar/app_bar_exports.dart';
import 'body/contact/contact_widget.dart';
import 'body/drawer/drawer_exports.dart';
import 'body/experience/experience_exports.dart';
import 'body/footer/footer_exports.dart';
import 'body/mywork/my_work_widget.dart';
import 'body/presentation/presentation.dart';
import 'body/projects/projects_exports.dart';
import 'body/social/socical_exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Widget> items;

  final itemScrollController = ItemScrollController();
  final itemPositionsListener = ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    items = [
      Presentation(itemScrollController),
      const Projects(),
      const Experience(),
      const SocialCommon(),
      // const MyWorkWidget(),
      // const ContactWidget(),
      const CustomFooter(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isToShowDrawer = constraints.maxWidth < Breakpoints.appBar;

        return Scaffold(
            appBar: CustomAppBar(itemScrollController),
            drawer: isToShowDrawer ? CustomDrawer(itemScrollController) : null,
            body: ScrollablePositionedList.builder(
              itemCount: items.length,
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
              itemBuilder: (context, index) => items[index],
            ),
            floatingActionButton: MyBlinkingButton());
      },
    );
  }
}

class MyBlinkingButton extends StatefulWidget {
  @override
  _MyBlinkingButtonState createState() => _MyBlinkingButtonState();
}

class _MyBlinkingButtonState extends State<MyBlinkingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: InkWell(
        onTap: () {
          AppHelper.launchURL(
              'https://api.whatsapp.com/send?phone=917507015366&text=Hi');
        },
        child: Image.asset(
          AppAssets.whatsapp,
          width: 80,
          height: 80,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
