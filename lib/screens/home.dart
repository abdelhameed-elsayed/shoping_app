import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/models/product.dart';
import '/painters/circlepainters.dart';
import '/screens/products_list.dart';
import '/screens/search.dart';
import '/screens/shoppingcart.dart';
import '/screens/usersettings.dart';
import '/screens/whell.dart';
import '/widgets/item_product.dart';
import '/utils/navigator.dart';
import 'package:page_transition/page_transition.dart';

import 'checkout.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        drawer: Drawer(child: leftDrawerMenu()),
        appBar: buildAppBar(context),
        bottomNavigationBar: TabBar(
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.attach_money),
            ),
            Tab(
              icon: Icon(Icons.shopping_cart),
            ),
            Tab(
              icon: Icon(Icons.account_circle),
            )
          ],
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.blueGrey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: const EdgeInsets.all(8.0),
          indicatorColor: Colors.red,
        ),
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const CategoriesListView(
                      title: "YOUR TITLES",
                      categories: [
                        'menu.png',
                        'tshirt.png',
                        'telephone.png',
                        'armchair.png',
                        'baby.png',
                        'lipstick.png',
                        'diamond.png',
                        'book.png'
                      ],
                      categoryTitle: [
                        'All',
                        'Dress',
                        'Electronic',
                        'Home',
                        'Baby',
                        'Fashion',
                        'Jewel',
                        'Book'
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: <Widget>[
                          const Expanded(
                            child: Text(
                              "Popular Trendings",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ProductList(),
                                  ),
                                );
                              },
                              child: const Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.blue),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    buildTrending(),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: <Widget>[
                          const Expanded(
                            child: Text(
                              "Best Selling",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                print("Clicked");
                              },
                              child: const Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.blue),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    buildTrending(),
                  ],
                ),
              ),
            ),
            UserSettings(),
          ],
        ),
      ),
    );
  }

  Column buildTrending() {
    return Column(
      children: <Widget>[
        Container(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TrendingItem(
                product: Product(
                    company: 'Apple',
                    name: 'iPhone 11 (128GB)',
                    icon: 'assets/phone1.jpeg',
                    rating: 4.5,
                    remainingQuantity: 5,
                    price: '\$4,000'),
                gradientColors: [const Color(0XFFa466ec), Colors.purple],
              ),
              TrendingItem(
                product: Product(
                    company: 'iPhone',
                    name: 'iPhone 11 (64GB)',
                    icon: 'assets/phone2.jpeg',
                    rating: 4.5,
                    price: '\$3,890',
                    remainingQuantity: 5),
                gradientColors: [const Color(0XFF6eed8c), Colors.green],
              ),
              TrendingItem(
                product: Product(
                    company: 'Xiaomi',
                    name: 'Xiaomi Redmi Note8',
                    icon: 'assets/mi1.png',
                    rating: 3.5,
                    price: '\$2,890',
                    remainingQuantity: 5),
                gradientColors: [const Color(0XFFf28767), Colors.orange],
              ),
              TrendingItem(
                product: Product(
                    company: 'Apple',
                    name: 'iPhone 11 (128GB)',
                    icon: 'assets/phone1.jpeg',
                    rating: 4.5,
                    remainingQuantity: 5,
                    price: '\$4,000'),
                gradientColors: [const Color(0XFFa466ec), Colors.purple],
              ),
              TrendingItem(
                product: Product(
                    company: 'iPhone',
                    name: 'iPhone 11 (64GB)',
                    icon: 'assets/phone2.jpeg',
                    rating: 4.5,
                    price: '\$3,890',
                    remainingQuantity: 5),
                gradientColors: [const Color(0XFF6eed8c), Colors.green],
              ),
              TrendingItem(
                product: Product(
                    company: 'Xiaomi',
                    name: 'Xiaomi Redmi Note8',
                    icon: 'assets/mi1.png',
                    rating: 3.5,
                    price: '\$2,890',
                    remainingQuantity: 5),
                gradientColors: [const Color(0XFFf28767), Colors.orange],
              ),
              TrendingItem(
                product: Product(
                    company: 'Apple',
                    name: 'iPhone 11 (128GB)',
                    icon: 'assets/phone1.jpeg',
                    rating: 4.5,
                    remainingQuantity: 5,
                    price: '\$4,000'),
                gradientColors: [const Color(0XFFa466ec), Colors.purple],
              ),
              TrendingItem(
                product: Product(
                    company: 'iPhone',
                    name: 'iPhone 11 (64GB)',
                    icon: 'assets/phone2.jpeg',
                    rating: 4.5,
                    price: '\$3,890',
                    remainingQuantity: 5),
                gradientColors: [const Color(0XFF6eed8c), Colors.green],
              ),
              TrendingItem(
                product: Product(
                    company: 'Xiaomi',
                    name: 'Xiaomi Redmi Note8',
                    icon: 'assets/mi1.png',
                    rating: 3.5,
                    price: '\$2,890',
                    remainingQuantity: 5),
                gradientColors: [const Color(0XFFf28767), Colors.orange],
              ),
            ],
          ),
        )
      ],
    );
  }

  BottomNavyBar buildBottomNavyBar(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      showElevation: true,
      onItemSelected: (index) => setState(() {
        currentIndex = index;
      }),
      items: [
        BottomNavyBarItem(
          icon: const Icon(Icons.home),
          title: const Text('Home'),
          activeColor: Theme.of(context).primaryColor,
        ),
        BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Categories'),
            activeColor: Theme.of(context).primaryColor),
        BottomNavyBarItem(
            icon: const Icon(Icons.shopping_cart),
            title: const Text('Shopping Cart'),
            activeColor: Theme.of(context).primaryColor),
        BottomNavyBarItem(
            icon: const Icon(Icons.shopping_basket),
            title: const Text('Orders'),
            activeColor: Theme.of(context).primaryColor),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "Flutter Ecommerce Design",
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
      leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () => _scaffoldKey.currentState?.openDrawer()),
      actions: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: Search(),
              ),
            );
          },
          child: const Icon(
            Icons.manage_accounts,
            color: Colors.black,
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.card_travel_outlined,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: ShoppingCart(true),
              ),
            );
          },
        ),
      ],
      backgroundColor: Colors.white,
    );
  }

  leftDrawerMenu() {
    Color blackColor = Colors.black.withOpacity(0.6);
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            height: 150,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFFF8FAFB),
              ),
              child: ListTile(
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 28,
                ),
                subtitle: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: UserSettings(),
                      ),
                    );
                  },
                  child: Text(
                    "See Profile",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: blackColor),
                  ),
                ),
                title: Text(
                  "Ali Anıl Koçak",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: blackColor),
                ),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://miro.medium.com/fit/c/256/256/1*mZ3xXbns5BiBFxrdEwloKg.jpeg"),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: blackColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w600, color: blackColor),
            ),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: Home(),
                ),
              );
            },
          ),
          ListTile(
            trailing: const Icon(
              Icons.ios_share_rounded,
              color: Color(0xFFFB7C7A),
              size: 18,
            ),
            leading: Icon(Icons.gif, color: blackColor),
            title: Text('Wheel Spin(Free)',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: WhellFortune(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.search, color: blackColor),
            title: Text('Search',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: Search(),
                ),
              );
            },
          ),
          ListTile(
            trailing: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xFFFB7C7A),
              size: 18,
            ),
            leading: Icon(Icons.border_all, color: blackColor),
            title: Text('Notifications',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Nav.route(context, Checkout());
            },
          ),
          ListTile(
            trailing: const Icon(
              Icons.looks_two,
              color: Color(0xFFFB7C7A),
              size: 18,
            ),
            leading: Icon(Icons.shopping_cart, color: blackColor),
            title: Text('Shopping Cart',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: ShoppingCart(true),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list, color: blackColor),
            title: Text('My Orders',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Nav.route(context, ProductList());
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_upward, color: blackColor),
            title: Text('Points',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Nav.route(context, Checkout());
            },
          ),
          ListTile(
            leading: Icon(Icons.message_outlined, color: blackColor),
            title: Text('Support',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Nav.route(context, ProductList());
            },
          ),
          ListTile(
            leading: Icon(Icons.help_center, color: blackColor),
            title: Text('Help',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Nav.route(context, UserSettings());
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: blackColor),
            title: Text('Settings',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: UserSettings(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.one_x_mobiledata, color: blackColor),
            title: Text('Quit',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor)),
            onTap: () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
          ),
        ],
      ),
    );
  }
}

class CategoriesListView extends StatelessWidget {
  final String title;
  final List<String> categories;
  final List<String> categoryTitle;

  const CategoriesListView(
      {Key? key,
      required this.title,
      required this.categories,
      required this.categoryTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 12),
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: ProductList(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          width: 55,
                          height: 55,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blueGrey,
                              width: 1,
                            ),
                          ),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/" + categories[index],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            categoryTitle[index],
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Regular',
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
