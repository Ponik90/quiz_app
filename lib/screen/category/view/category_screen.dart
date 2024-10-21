import 'package:first_reexam/screen/category/controller/category_controller.dart';
import 'package:first_reexam/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  CategoryController categoryController = Get.put(CategoryController());
  HomeController homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    categoryController.getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Master"),
      ),
      backgroundColor: const Color(0xff252A40),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => categoryController.model.value.category == null
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: categoryController.model.value.category!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        homeController.resultList.clear();
                        Get.toNamed('difficulty',
                            arguments: categoryController
                                .model.value.category![index]);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xff405171),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "${categoryController.model.value.category![index].name}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
