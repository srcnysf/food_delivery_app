enum TabItem { Home, Search, Orders, Profile }

class TabItemData {
  final String title;
  final String path;

  TabItemData(this.title, this.path);

  static Map<TabItem, TabItemData> tabs = {
    TabItem.Home: TabItemData(
      'Home',
      "assets/home.png",
    ),
    TabItem.Search: TabItemData(
      'Search',
      "assets/icon_search.png",
    ),
    TabItem.Orders: TabItemData(
      'Orders',
      "assets/orders.png",
    ),
    TabItem.Profile: TabItemData(
      'Favorite',
      "assets/star.png",
    )
  };
}
