import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modern_pos/constants/colors.dart';

import 'package:modern_pos/constants/text.dart';
//import 'package:modern_pos/widgets/load_fail_widget.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: Text(
            "Menu",
            style: titleStyle,
          ),
        ),
        successfulMenu(context)
      ],
    );
  }

  Widget successfulMenu(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Gap(25),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: kThirdColor, width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: const Row(
            children: [
              Icon(
                Icons.search,
                color: kSecondaryColor,
              ),
              Gap(20),
              Text(
                "Search Product...",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        const Gap(20),
        SizedBox(
          height: 70,
          child: ListView.separated(
            separatorBuilder: (context, index) => const Gap(17),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: menuCategory(
                    context, selectedIndex == index ? true : false)),
            itemCount: 5,
          ),
        ),
        const Gap(20),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 0.0,
            mainAxisExtent: 220,
          ),
          itemCount: 6,
          itemBuilder: (context, index) => item(context),
        ),
        const Gap(50),
      ],
    );
  }

  Widget menuCategory(BuildContext context, bool isSelected) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
          color: isSelected ? kSecondaryColor : kPrimaryColor,
          border: Border.all(width: 0.3),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.fastfood_outlined,
            color: isSelected ? kPrimaryColor : kSecondaryColor,
          ),
          const Gap(5),
          Text(
            "All",
            style: TextStyle(
                color: isSelected ? kPrimaryColor : kSecondaryColor,
                fontSize: 10),
          )
        ],
      ),
    );
  }

  Widget item(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.circular(8), //border corner radius
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(width: 0.3)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  "assets/images/app_logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Gap(15),
          const Text(
            "Item Name",
            style: TextStyle(fontSize: 15),
          ),
          const Text(
            "Category",
            style: TextStyle(fontSize: 10, color: kThirdColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Item Price",
                style: TextStyle(fontSize: 15),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: kSecondaryColor),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 16,
                    color: kPrimaryColor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


/*
 Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22),
          child: LoadFailWidget(
            function: () {},
          ),
        )
*/
