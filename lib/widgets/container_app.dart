import 'package:cooffee/model/coffee_models.dart';
import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 400,
      child: PageView.builder(
          itemCount: Coffee.contList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 420,
                        width: 340,
                        color: Colors.transparent,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 30,
                        child: Container(
                          height: 260,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: Color(0xffdbb88a),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 140.0,
                        height: 90,
                        width: 80,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.9),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/${Coffee.contList[index].imagepath}",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 40,
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              Coffee.contList[index].name,
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              Coffee.contList[index].desc,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$${Coffee.contList[index].price}",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 130,
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Coffee.contList[index].color,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
