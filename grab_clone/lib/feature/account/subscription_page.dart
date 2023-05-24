import 'package:flutter/material.dart';
import 'package:grab_clone/common/mock.dart';
import 'package:grab_clone/constant/icon.dart';
import 'package:grab_clone/constant/image.dart';
import 'package:grab_clone/constant/text.dart';
import 'package:grab_clone/constant/colors.dart';
import 'package:grab_clone/constant/dimensions.dart';
import 'package:grab_clone/utility/image_text_card_item.dart';
import 'package:grab_clone/extension/build_context_extension.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  Widget _buildBrowse() {
    final list = Mock.grabUnlimitedItems;
    return ListView.separated(
      itemCount: list.length,
      padding: EdgeInsets.all(AppDimensions.mediumSize),
      separatorBuilder: (context, index) => AppDimensions.mediumHeightSpace,
      itemBuilder: (context, index) {
        return ImageTextCardItem(
          image: list[index].imageNamed,
          title: list[index].title,
          subtitle: list[index].subtitle,
          discountLabel: list[index].discountLabel,
          discountPrice: list[index].discountPrice,
        );
      },
    );
  }

  Widget _buildMySubscription() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.largerSize,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.mailBox,
            width: AppDimensions.bannerSize,
          ),
          AppDimensions.largerHeightSpace,
          Text(
            "Go Light on Your Wallet",
            style: AppTextStyles.biggerBoldFont,
          ),
          AppDimensions.mediumHeightSpace,
          Text(
            "Save on rides, food, shopping, and more! Get on a plan to Grab for less.",
            style: AppTextStyles.smallMediumFont,
            textAlign: TextAlign.center,
          ),
          AppDimensions.largerHeightSpace,
          GestureDetector(
            onTap: () {
              print("Find Plan");
            },
            child: Text(
              "Find a Plan",
              style: AppTextStyles.biggerBoldFont
                  .copyWith(color: AppColors.lighterBlue),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          toolbarHeight: AppDimensions.navigationBarHeight,
          leadingWidth: AppDimensions.customButtonHeight,
          leading: Padding(
            padding: EdgeInsets.all(AppDimensions.smallSize),
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Image.asset(AppIcons.leftArrow),
            ),
          ),
          title: Text(
            'Subscriptions',
            style: AppTextStyles.bigBoldFont,
          ),
          bottom: TabBar(
            indicatorColor: AppColors.green,
            labelColor: AppColors.green,
            labelStyle: AppTextStyles.smallBoldFont,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(child: Text("Browse")),
              Tab(child: Text("My Subscriptions")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildBrowse(),
            _buildMySubscription(),
          ],
        ),
      ),
    );
  }
}
