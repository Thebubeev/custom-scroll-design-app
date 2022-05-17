import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../widgets/card_widget.dart';
import '../widgets/job_offer_widget.dart';
import '../widgets/todo_card_widget.dart';
import '../widgets/productions_widget.dart';
import '../widgets/starred_posts_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  bool isMin = false;

  SliverPersistentHeader makeHeader() {
    return SliverPersistentHeader(
        pinned: true,
        delegate: _SliverAppBarDelegate(
          90.0,
          140,
          ListCardWidgets(
            isMin: isMin,
          ),
        ));
  }

  @override
  void initState() {
    controller.addListener(() {
      if (controller.offset >= 100) {
        setState(() {
          isMin = true;
        });
      } else {
        setState(() {
          isMin = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            flexibleSpace: isMin
                ? FlexibleSpaceBar(
                    background: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ))
                : Container(),
            backgroundColor: isMin ? Colors.transparent : Colors.white,
            elevation: 0,
            pinned: true,
            title: const Text(
              'My Availability',
              style: TextStyle(color: Colors.black, fontSize: 23),
            ),
          ),
          makeHeader(),
          const ListTodoCardWidgets(),
          const ListProductionsWidgets(),
          const ListJobOffersWidgets(),
          const ListStarredPostsWidgets()
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;
  _SliverAppBarDelegate(
    this.minHeight,
    this.maxHeight,
    this.child,
  );

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
