import 'package:first_reexam/screen/home/controller/home_controller.dart';
import 'package:first_reexam/screen/reward/controller/reward_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  HomeController controller = Get.put(HomeController());

  RewardController rewardController = Get.put(RewardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252A40),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Get.offAllNamed('category');
                  controller.correctAnsList.clear();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 600,
              margin: const EdgeInsets.only(left: 25, right: 25),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: const Color(0xffCCDDE7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/image/winner.png",
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "Congrats!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${rewardController.per.value.toInt()}% Score",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff2BC26C),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Quiz completed successfully.",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "You attempt ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        const TextSpan(
                          text: "10 question ",
                          style: TextStyle(
                            color: Color(0xff1666AB),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: "and\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        const TextSpan(
                          text: "from that ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: "${controller.correctAnsList.length} answer",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xff2BC26C),
                              fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(
                          text: " is correct",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
