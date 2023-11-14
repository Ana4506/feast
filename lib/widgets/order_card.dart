import 'package:feast/screens/my_orders.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(32, 24, 32, 24),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.fastfood,
                  color: Color.fromARGB(255, 234, 101, 0),
                  size: 60,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          order.storeName,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 50),
                        Text(
                          '#${order.orderId}',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 169, 169, 169),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "₹${order.total.toStringAsFixed(2)}",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "|",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 169, 169, 169),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Qty: ${order.items.length}",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        //open a dialog box and show the order details
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Order Details'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text('Order ID: ${order.orderId}'),
                                    SizedBox(height: 10),
                                    Text('Store Name: ${order.storeName}'),
                                    SizedBox(height: 10),
                                    Text('Total: ${order.total}'),
                                    SizedBox(height: 10),
                                    Text('Items:'),
                                    SizedBox(height: 10),
                                    Column(
                                      children: order.items.map((item) {
                                        return Text(
                                            '${item.itemName} x ${item.quantity}');
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Close'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'View Details',
                        style: TextStyle(fontSize: 12),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 234, 101, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: Size(140, 44),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel Order',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 234, 101, 0),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Color.fromARGB(255, 234, 101, 0),
                          ),
                        ),
                        minimumSize: Size(140, 44),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
