import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class BrandCaption extends StatelessWidget {
  const BrandCaption({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            kBrandLogoCaptionLine1,
            style: kBrandLogoTextStyle,
          ),
          Text(
            kBrandLogoCaptionLine2,
            style: kBrandLogoTextStyle,
          ),
        ],
      ),
    );
  }
}
