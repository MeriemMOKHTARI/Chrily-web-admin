import 'package:chrily_web_admin/views/screens/side_bar_screens/Categories_screen.dart';
import 'package:chrily_web_admin/views/screens/side_bar_screens/DashBoard_screen.dart';
import 'package:chrily_web_admin/views/screens/side_bar_screens/Orders_screen.dart';
import 'package:chrily_web_admin/views/screens/side_bar_screens/Products_screen.dart';
import 'package:chrily_web_admin/views/screens/side_bar_screens/Upload_banner_screen.dart';
import 'package:chrily_web_admin/views/screens/side_bar_screens/Vendors_screen.dart';
import 'package:chrily_web_admin/views/screens/side_bar_screens/Withdrawal_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreem extends StatefulWidget {
  const MainScreem({super.key});

  @override
  State<MainScreem> createState() => _MainScreemState();
}

class _MainScreemState extends State<MainScreem> {
  Widget _SelectedItem = DashboardScreen();
  screensSlector(item){
switch(item.route){
  case DashboardScreen.routeName :
  setState(() {
    _SelectedItem=DashboardScreen();
  });

  break;

  case VendorsScreen.routeName :
  setState(() {
    _SelectedItem=VendorsScreen();
  });

  break;

  case CategoriesScreen.routeName :
  setState(() {
    _SelectedItem=CategoriesScreen();
  });

  break;

  case OrdersScreen.routeName :
  setState(() {
    _SelectedItem=OrdersScreen();
  });

  break;

  case ProductScreen.routeName :
  setState(() {
    _SelectedItem=ProductScreen();
  });

  break;

  case UploadBannerScreen.routeName :
  setState(() {
    _SelectedItem=UploadBannerScreen();
  });

  break;

  case WithdrawalScreen.routeName :
  setState(() {
    _SelectedItem=WithdrawalScreen();
  });

  break;
}

  }
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   //backgroundColor: ta3 app,
      //   title: Text('Management'),
      // ),
      sideBar: SideBar(items: [
        AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            route: DashboardScreen.routeName),
        AdminMenuItem(
            title: 'Vendors',
            icon: CupertinoIcons.person_3,
            route: VendorsScreen.routeName),
        AdminMenuItem(
            title: 'Withdrawal', icon: CupertinoIcons.money_dollar, route: WithdrawalScreen.routeName),
        AdminMenuItem(
            title: 'Orders', icon: CupertinoIcons.shopping_cart, route: OrdersScreen.routeName),
        AdminMenuItem(
          title: 'Categories', icon: Icons.category, route: CategoriesScreen.routeName),
        AdminMenuItem(
          title: 'Products', icon: Icons.shop, route: ProductScreen.routeName),
        AdminMenuItem(
            title: 'Upload Banner', icon: CupertinoIcons.add, route: UploadBannerScreen.routeName),
      ], selectedRoute: '',
      onSelected: (item) {
        screensSlector(item);
      },

        header: Container(
          height: 50,
          width: double.infinity,
          color: Colors.red,
          child: const Center(
            child: Text(
              'Meriem Store Panel',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),

         footer: Container(
          height: 50,
          width: double.infinity,
          color: Colors.red,
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ),
      body: _SelectedItem,
    );
  }
}
