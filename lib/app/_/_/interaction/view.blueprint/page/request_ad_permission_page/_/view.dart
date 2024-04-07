import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(0),
          Column(
            children: [
              Image.asset("assets/view/request_ad_permission_page/ad.png"),
              Gap(20),
              Text("We need permission to provide you with personalized content")
                  .textStyle(Theme.of(context).textTheme.titleLarge!)
                  .textAlignment(TextAlign.center)
                  .fontWeight(FontWeight.w700)
                  .padding(horizontal: 20),
              Gap(20),
            ],
          ),
          Gap(20),
          Column(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                      color: Theme.of(context).textTheme.bodyMedium!.color!,
                      width: 2), // Set border color and thickness
                ),
                child: Text("Deny")
                    .fontWeight(FontWeight.bold)
                    .textColor(
                    Theme.of(context).textTheme.bodyMedium!.color!)
                    .padding(vertical: 15, horizontal: 20),
              )
                  .padding(
                horizontal: 30,
              )
                  .width(double.infinity),
              Gap(10),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(
                      color: Theme.of(context).textTheme.bodyMedium!.color!,
                      width: 2), // Set border color and thickness
                ),
                child: Text("Allow")
                    .fontWeight(FontWeight.bold)
                    .textColor(
                    Theme.of(context).textTheme.bodyMedium!.color!)
                    .padding(vertical: 15, horizontal: 20),
              )
                  .padding(
                horizontal: 30,
              )
                  .width(double.infinity),
              Gap(20),
            ],
          )
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
