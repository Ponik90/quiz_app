import 'package:first_reexam/screen/category/model/category_model.dart';
import 'package:first_reexam/screen/difficulty/controller/difficulty_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DifficultyScreen extends StatefulWidget {
  const DifficultyScreen({super.key});

  @override
  State<DifficultyScreen> createState() => _DifficultyScreenState();
}

class _DifficultyScreenState extends State<DifficultyScreen> {
  DifficultyController controller = Get.put(DifficultyController());
  ListModel category = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name!),
      ),
      backgroundColor: const Color(0xff252A40),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "select total quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Obx(
              () => DropdownButton(
                value: controller.selectQuestion.value,
                dropdownColor: const Color(0xff405171),
                isExpanded: true,

                items: const [
                  DropdownMenuItem(
                    value: 10,
                    child: Text(
                      "10",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 20,
                    child: Text(
                      "20",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 30,
                    child: Text(
                      "30",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 40,
                    child: Text(
                      "40",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 50,
                    child: Text(
                      "50",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
                onChanged: (value) {
                  controller.selectQuestion.value = value!;
                },
              ),
            ),
            const Text(
              "select quiz difficulty",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Obx(
              () => InkWell(
                onTap: () {
                  controller.selectDifficulty.value = "easy";
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: controller.selectDifficulty.value != "easy"
                        ? const Color(0xffCCDDE7)
                        : const Color(0xffE98235),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Easy",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 20,
                      color: controller.selectDifficulty.value != "easy"
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => InkWell(
                onTap: () {
                  controller.selectDifficulty.value = "medium";
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: controller.selectDifficulty.value != "medium"
                        ? const Color(0xffCCDDE7)
                        : const Color(0xffE98235),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Medium",
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 20,
                      color: controller.selectDifficulty.value != "medium"
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => InkWell(
                  onTap: () {
                    controller.selectDifficulty.value = "hard";
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    width: MediaQuery.sizeOf(context).width,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: controller.selectDifficulty.value != "hard"
                          ? const Color(0xffCCDDE7)
                          : const Color(0xffE98235),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Hard",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 20,
                        color: controller.selectDifficulty.value != "hard"
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
