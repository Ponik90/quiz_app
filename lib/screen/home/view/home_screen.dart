import 'package:first_reexam/screen/home/controller/home_controller.dart';
import 'package:first_reexam/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    homeController.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz Master",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff405171),
      ),
      backgroundColor: const Color(0xff252A40),
      body: FutureBuilder(
        future: homeController.model,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            HomeModel? model = snapshot.data;
            String? qu;
            String? cAns;
            List? l1 = [];

            for (var x in model!.resultModel!) {
              qu = x.question;
              l1 = x.wAnswer;
              cAns = x.cAnswer;
              l1!.add(cAns);
              l1.shuffle();

              AllDataModel allDataModel =
                  AllDataModel(question: qu, cAns: cAns, optionList: l1);
              homeController.resultList.add(allDataModel);
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Obx(
                () => Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xfff1a467),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent,
                            blurRadius: 3,
                            spreadRadius: 2,
                            offset: (homeController.changeQ.value + 1) % 2 == 00
                                ? const Offset(-1, 1)
                                : const Offset(1, -1),
                          ),
                        ],
                      ),
                      child: Text(
                        "${homeController.changeQ.value + 1}. ${homeController.resultList[homeController.changeQ.value].question}",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        homeController.selectOption.value = 1;
                        homeController.check.value = homeController
                            .resultList[homeController.changeQ.value]
                            .optionList![0];
                      },
                      child: homeController.selectOption.value == 1
                          ? Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffE98235),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "A",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![0]}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffCCDDE7),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "A",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![0]}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        homeController.selectOption.value = 2;
                        homeController.check.value = homeController
                            .resultList[homeController.changeQ.value]
                            .optionList![1];
                      },
                      child: homeController.selectOption.value == 2
                          ? Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffE98235),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "B",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![1]}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffCCDDE7),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "B",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![1]}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        homeController.selectOption.value = 3;
                        homeController.check.value = homeController
                            .resultList[homeController.changeQ.value]
                            .optionList![2];
                      },
                      child: homeController.selectOption.value == 3
                          ? Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffE98235),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "C",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![2]}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffCCDDE7),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "C",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![2]}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                    InkWell(
                      onTap: () {
                        homeController.selectOption.value = 4;
                        homeController.check.value = homeController
                            .resultList[homeController.changeQ.value]
                            .optionList![3];
                      },
                      child: homeController.selectOption.value == 4
                          ? Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffE98235),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "D",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![3]}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xffCCDDE7),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Color(0xffE98235),
                                    child: Text(
                                      "D",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "${homeController.resultList[homeController.changeQ.value].optionList![3]}",
                                      maxLines: 1,
                                      style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          if (homeController.selectOption.value != 0) {
                            if (homeController
                                    .resultList[homeController.changeQ.value++]
                                    .cAns ==
                                homeController.check.value) {
                              homeController.write.value++;
                              homeController.correctAnsList
                                  .add(homeController.write.value);
                            }
                            // model.resultModel![homeController.changeQ.value++];
                            homeController.selectOption.value = 0;
                            if (homeController.changeQ.value == 10) {
                              homeController.changeQ.value = 0;
                              Get.toNamed('reward');
                            }
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.sizeOf(context).width / 5,
                          decoration: BoxDecoration(
                            color: homeController.selectOption.value != 0
                                ? const Color(0xffE98235)
                                : const Color(0xffCCDDE7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: homeController.selectOption.value != 0
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
