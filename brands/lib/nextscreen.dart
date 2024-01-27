import 'package:brands/selectedbrand.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:brands/productview.dart';

class nextscreen extends StatelessWidget {
  late final Selectedbrand ctrl;
  final String brand;

  nextscreen({super.key, required this.brand}) {
    ctrl = Get.put((Selectedbrand(brand)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          brand.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold 
              ),
        ),
      ),
      body: Obx(
        () => ctrl.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Container(
              margin: const EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: ctrl.products.length,
                itemBuilder: (ctx, index) => Card(
                  color: Colors.grey,
                  borderOnForeground: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ProductView(
                    product: ctrl.products[index],
                  ),
                ),
              ),
            )
      ),
    );
  }
}
