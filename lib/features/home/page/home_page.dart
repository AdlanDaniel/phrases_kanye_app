import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phrases_kanye_west/features/home/controller/home_controller.dart';
import 'package:phrases_kanye_west/features/resources/messages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        color: const Color(0XFFF1D792),
        child: SafeArea(
          child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.22),
            InkWell(
                onTap: () async {
                  await controller.getPhraseKanyeWest();
                },
                child: Obx(
                  () => CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.4,
                    backgroundColor: const Color(0XFFDFE9F5),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        controller.phrase.value,
                        style: const TextStyle(
                            fontSize: 20,
                            letterSpacing: 2,
                            wordSpacing: 5,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                )),
            //
            const Text(
              Messages.titleHome,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Color(0XFF009DCF),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  fontSize: 18),
            ),
          ]),
        ),
      ),
    );
  }
}
