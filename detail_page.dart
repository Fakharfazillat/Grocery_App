import 'package:flutter/material.dart';
import 'package:flutter_application_6/utils.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  String url;
  String name;
  String price;
  String details;

  DetailsPage({
    required this.name,
    required this.price,
    required this.url,
    required this.details,
  });
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void addToCart() {
    CartItem newItem =
        CartItem(name: widget.name, price: widget.price, count: counter);
    Cart.addToCart(newItem);
    setState(() {
      counter = 0;
    });

    Navigator.pushNamed(context, '/cart');
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.search_outlined,
              color: green,
              size: 30,
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 100),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      widget.url,
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment.center)),
          ),
          vspace,
          vspace,
          vspace,
          vspace,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  widget.name,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
              hspace,
              hspace,
              hspace,
              InkWell(
                onTap: () => decrementCounter(),
                child: Icon(
                  Icons.remove_circle,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
              hspace,
              hspace,
              hspace,
              Text(
                '$counter',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              hspace,
              hspace,
              hspace,
              InkWell(
                onTap: () => incrementCounter(),
                child: Icon(
                  Icons.add_circle,
                  color: green,
                  size: 40,
                ),
              ),
            ],
          ),
          vspace,
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              widget.price,
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          vspace,
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              widget.details,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          vspace,
          vspace,
          vspace,
          Row(
            children: [
              hspace,
              hspace,
              hspace,
              Image.asset("assets/images/mdi_organic-outline.png"),
              Text.rich(
                TextSpan(
                    text: "100%",
                    style: TextStyle(color: green, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "\nOrganic",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500))
                    ]),
              ),
              SizedBox(
                width: 60,
              ),
              Image.asset("assets/images/tabler_square-number-1.png"),
              Text.rich(
                TextSpan(
                    text: "1 Year",
                    style: TextStyle(color: green, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "\nExpiration",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500))
                    ]),
              ),
            ],
          ),
          vspace,
          vspace,
          vspace,
          Row(
            children: [
              hspace,
              hspace,
              hspace,
              Image.asset("assets/images/noto_star.png"),
              Text.rich(
                TextSpan(
                    text: "8.4",
                    style: TextStyle(color: green, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "\nReviews",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500))
                    ]),
              ),
              SizedBox(
                width: 60,
              ),
              Image.asset("assets/images/fluent-emoji_fire.png"),
              Text.rich(
                TextSpan(
                    text: "80 kcal",
                    style: TextStyle(color: green, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "\n100 GRM",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500))
                    ]),
              ),
            ],
          ),
          vspace,
          vspace,
          vspace,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                addToCart();
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 90, right: 90, top: 10, bottom: 10),
                child: Text(
                  "add to cart",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: green),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  String name;
  String price;
  int count;

  CartItem({
    required this.name,
    required this.price,
    required this.count,
  });
}

class Cart {
  static List<CartItem> items = [];

  static void addToCart(CartItem item) {
    items.add(item);
  }
}
