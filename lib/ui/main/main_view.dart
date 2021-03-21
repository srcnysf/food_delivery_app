import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/constants.dart';
import 'package:food_delivery_app/ui/favoured/favoured_view.dart';
import 'package:food_delivery_app/ui/home/home_view.dart';
import 'package:food_delivery_app/ui/orders/orders_view.dart';
import 'package:food_delivery_app/ui/search/search_view.dart';
import 'package:food_delivery_app/widgets/tab_item.dart';
import 'package:stacked/stacked.dart';

import 'main_view_model.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final Map<int, Widget> _viewCache = Map<int, Widget>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      disposeViewModel: false,
      builder: (context, model, child) => WillPopScope(
          onWillPop: () async {
            if (model.currentTabIndex != 0) {
              model.setTabIndex(0);
              return false;
            } else
              return true;
          },
          child: Scaffold(
            extendBody: true,
            body: PageTransitionSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return FadeThroughTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              },
              child: getViewForIndex(model.currentTabIndex),
            ),
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Constants.primaryColor,
                unselectedItemColor: Colors.grey,
                selectedFontSize: 13,
                unselectedFontSize: 13,
                currentIndex: model.currentTabIndex,
                items: [
                  _createNavItem(TabItem.Home),
                  _createNavItem(TabItem.Search),
                  _createNavItem(TabItem.Orders),
                  _createNavItem(TabItem.Profile),
                ],
                onTap: model.setTabIndex,
              ),
            ),
          )),
    );
  }

  Widget? getViewForIndex(int index) {
    if (!_viewCache.containsKey(index)) {
      switch (index) {
        case 0:
          _viewCache[index] = HomeView();
          break;
        case 1:
          _viewCache[index] = SearchView();
          break;
        case 2:
          _viewCache[index] = OrdersView();
          break;
        case 3:
          _viewCache[index] = FavouredView();
          break;
      }
    }
    return _viewCache[index];
  }

  BottomNavigationBarItem _createNavItem(TabItem tabItem) {
    final currenTab = TabItemData.tabs[tabItem]!;
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(currenTab.path),
        size: 25,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(currenTab.title,
            style: TextStyle(fontWeight: FontWeight.w700)),
      ),
    );
  }
}
