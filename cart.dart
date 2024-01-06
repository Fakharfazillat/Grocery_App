import 'package:flutter/material.dart';
import 'package:flutter_application_6/track_order.dart';
import 'detail_page.dart';
import 'utils.dart';

class Cart_page extends StatefulWidget {
  const Cart_page({super.key});

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends State<Cart_page> {
  void incrementCounter(int index) {
    setState(() {
      Cart.items[index].count++;
    });
  }

  void decrementCounter(int index) {
    setState(() {
      if (Cart.items[index].count > 0) {
        Cart.items[index].count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              "Cart",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: Cart.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      Cart.items[index].name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text(
                      '${Cart.items[index].price}',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.red),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () => decrementCounter(index),
                          child: Icon(
                            Icons.remove_circle,
                            color: Colors.grey,
                            size: 25,
                          ),
                        ),
                        hspace,
                        Text(
                          "${Cart.items[index].count}",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        hspace,
                        InkWell(
                          onTap: () => incrementCounter(index),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TrackOrder()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 90, right: 90, top: 10, bottom: 10),
                  child: Text(
                    "check out",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
