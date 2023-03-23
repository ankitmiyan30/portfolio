import 'package:flutter/material.dart';

import '../../../components/image_asset_widget.dart';
import '../../../utils/utils_exports.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 4),
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            AppString.createBy,
            style: AppTextStyles.footer,
          ),
          const SizedBox(width: 2),
          const ImageAssetWidget(
            AppAssets.developer,
            height: 16,
          ),
        ],
      ),
    );
  }
}
