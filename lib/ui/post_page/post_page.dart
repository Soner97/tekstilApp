import 'package:flutter/material.dart';
import 'package:tekstilcim/core/components/colors.dart';
import 'package:tekstilcim/core/components/context_extension.dart';
import 'package:tekstilcim/ui/post_page/product_ad.dart';
import 'package:tekstilcim/ui/post_page/service_ad.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PostPageView extends StatefulWidget {
  @override
  _PostPageViewState createState() => _PostPageViewState();
}

class _PostPageViewState extends State<PostPageView> {
  final ProductAd _productAd = ProductAd();
  final ServiceAD _serviceAD = ServiceAD();

  Widget _showPage = new ServiceAD();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _productAd;
        break;

      case 1:
        return _serviceAD;
        break;

      default:
        return Container(
          child: Text("hata var"),
        );
    }
  }

  bool _swapNutrients = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Row(
            children: [
              SizedBox(
                width: context.dynamicWidth(0.04),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colorsx.mainColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: ToggleSwitch(
                  activeBgColor: Colorsx.mainColor,
                  activeFgColor: Colors.white,
                  cornerRadius: 25.0,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Colorsx.mainColor,
                  minWidth: context.dynamicWidth(0.9),
                  minHeight: context.dynamicHeight(0.06),
                  initialLabelIndex: _swapNutrients ? 0 : 1,
                  fontSize: 14.0,
                  labels: [
                    'ÜRÜN İLANI VER',
                    'HİZMET İLANI VER',
                  ],
                  changeOnTap: true,
                  onToggle: (index) {
                    setState(() {
                      _swapNutrients = !_swapNutrients;
                      _showPage = _pageChooser(index);
                    });
                    print('switched to: $index');
                  },
                ),
              ),
              SizedBox(
                width: context.dynamicWidth(0.04),
              ),
            ],
          )
        ],
      ),
      body: _showPage,
    );
  }
}
