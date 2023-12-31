import 'package:flutter/material.dart';
import 'package:feast/models/category.dart';
import 'package:feast/models/restraunt.dart';
import 'package:feast/widgets/restaurantfilter.dart';

class CategoryBox extends StatelessWidget {
  final Category category;
  final List<Restaurant> restaurants;

  const CategoryBox({
    Key? key,
    required this.category,
    required this.restaurants,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RestaurantFilter(
              category: category,
              restaurants: restaurants,
            ),
          ),
        );
      },
      child: Container(
        width: width * 0.17,
        margin:
            EdgeInsets.fromLTRB(width * 0.05, height * 0.01, 0, width * 0.05),
        decoration: BoxDecoration(
          color: Color(0xffFFE9E9),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: height * 0.08,
                  width: width * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(category.imageUrl),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  category.name,
                  style: TextStyle(
                    fontFamily: "Space Grotesk",
                    color: Colors.black,
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
