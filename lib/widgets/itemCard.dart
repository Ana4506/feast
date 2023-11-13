import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final double price;
  final double rating;

  const ItemCard({
    Key? key,
    required this.name,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    //write rupees sign instead of dollar

                    'Rs ${price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: height * 0.001),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFD1512D),
                        size: 16,
                      ),
                      SizedBox(width: width * 0.01),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      TextButton(
                        onPressed: () {
                          // TODO: Implement show reviews functionality
                        },
                        child: Text(
                          'Show Reviews',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFD1512D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: width * 0.25,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFD1512D),
              ),
              onPressed: () {
                // TODO: Implement add to cart functionality
              },
              child: Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}
