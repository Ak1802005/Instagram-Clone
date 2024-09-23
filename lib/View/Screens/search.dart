import 'package:flutter/material.dart';
import 'package:socialapp/View/Custom-Widgets/Custom-navBar.dart';
import 'package:socialapp/main.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            35.vertical(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SearchBar(
                leading: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.search_rounded),
                ),
                hintText: "Hello! What's Problem",
                shape: WidgetStatePropertyAll(ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            SizedBox(
              height: height * 0.8,
              child: GridView.builder(
                itemCount: 14,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      child: Image.asset('asset/search/$index.png',fit: BoxFit.cover,));
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomNavBar(),
      ),
    );
  }
}
