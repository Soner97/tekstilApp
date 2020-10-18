import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tekstilcim/ui/authentication_page/login_page.dart';
import 'package:tekstilcim/core/components/colors.dart';
import 'package:tekstilcim/ui/home_page/search_product.dart';
import 'package:tekstilcim/ui/home_page/search_service.dart';
import 'package:tekstilcim/ui/post_page/post_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LoginPageView _loginPageView = LoginPageView();
  final PostPageView _postPageView = PostPageView();
  final SearchService _searchService = SearchService();
  final SearchProduct _searchProduct = SearchProduct();

  Widget _showPage = new SearchProduct();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _searchProduct;
        break;

      case 1:
        return _searchService;
        break;

      case 2:
        return _postPageView;
        break;

      case 3:
        return _loginPageView;
        break;

      default:
        return Container(
          child: Text("hata var"),
        );
    }
  }

  //int pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _showPage,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: Colors.white,
        color: Colorsx.mainColor,
        buttonBackgroundColor: Colorsx.mainColor,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.work,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle,
            size: 25,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _showPage = _pageChooser(index);
          });
        },
      ),
    );
  }
}
