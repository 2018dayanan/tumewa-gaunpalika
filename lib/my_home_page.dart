import 'package:flutter/material.dart';
import 'package:tumewa/constants/string_constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [Text("Nepali Date"), Text("Nepali Time")],
                    ),
                    Row(
                      children: [
                        Image.network(
                          AppStrings.kLogo,
                          height: 30,
                        ),
                        const SizedBox(width: 8),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppStrings.kPalikaName),
                            Text(AppStrings.kAddress)
                          ],
                        ),
                      ],
                    ),
                    Image.network(
                      AppStrings.kFlag,
                      height: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth < 768) {
                      return SingleChildScrollView(
                        // Add scroll view here for mobile view
                        child: Column(
                          children: [
                            buildFirstContainer(),
                            const SizedBox(height: 8),
                            buildSecondContainer(),
                            const SizedBox(height: 8),
                            buildThirdContainer(screenWidth),
                          ],
                        ),
                      );
                    } else {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 2, child: buildFirstContainer()),
                          const SizedBox(width: 8),
                          Expanded(flex: 2, child: buildSecondContainer()),
                          const SizedBox(width: 8),
                          Expanded(
                              flex: 3, child: buildThirdContainer(screenWidth)),
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFirstContainer() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.kText1),
          Text(AppStrings.kText2),
          Text(AppStrings.kText2),
          Text(AppStrings.kText2),
          Text(AppStrings.kText2),
          Text(AppStrings.kText2),
          Text(AppStrings.kText2),
        ],
      ),
    );
  }

  Widget buildSecondContainer() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.kText3),
          Text(AppStrings.kText3),
          Text(AppStrings.kText3),
          Text(AppStrings.kText3),
        ],
      ),
    );
  }

  Widget buildThirdContainer(double screenWidth) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black,
        ),
      ),
      child: Column(
        children: [
          Image.network(
            AppStrings.kImage1,
            width: screenWidth * 0.3,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.network(
                AppStrings.kImage1,
                width: screenWidth * 0.15,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              Image.network(
                AppStrings.kImage1,
                width: screenWidth * 0.15,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: Colors.black,
                )),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Text(AppStrings.kName),
                    Text(AppStrings.kDesi),
                    Text(AppStrings.kNumber),
                    Text(AppStrings.kRoomNo),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: Colors.black,
                )),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    Text(AppStrings.kName),
                    Text(AppStrings.kDesi),
                    Text(AppStrings.kNumber),
                    Text(AppStrings.kRoomNo),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
