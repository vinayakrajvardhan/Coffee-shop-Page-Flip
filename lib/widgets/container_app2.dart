import 'package:cooffee/model/coffee_models.dart';
import 'package:cooffee/screens/details_screens.dart';
import 'package:flutter/material.dart';

class ContainerApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Coffee.coffeeList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailsScreen(
                      data: Coffee.coffeeList[index],
                    );
                  }),
                );
              },
              child: Hero(
                tag: "${Coffee.coffeeList[index].imagepath}",
                child: Container(
                  margin: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.8),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/${Coffee.coffeeList[index].imagepath}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 200,
                ),
              ),
            );
          }),
    );
  }
}
