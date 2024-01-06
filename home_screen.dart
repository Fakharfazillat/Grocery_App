import 'package:flutter/material.dart';
import 'package:flutter_application_6/common_widgets.dart';
import 'package:flutter_application_6/detail_page.dart';
import 'package:flutter_application_6/items.dart';
import 'utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("assets/images/Ellipse 5.png"),
            hspace,
            Text(
              "Good Morning",
              style: TextStyle(
                  color: Color.fromARGB(255, 197, 195, 195), fontSize: 17),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Icon(
                Icons.location_on_outlined,
                color: green,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "My Flat",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Icon(
                Icons.expand_more_outlined,
                size: 20,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          vspace,
          vspace,
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Stack(
              children: [
                Container(
                  height: 30,
                  width: 240,
                ),
                Icon(
                  Icons.search_outlined,
                  size: 25,
                  color: green,
                ),
                Positioned(
                  left: 30,
                  child: Text(
                    "Search Category",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          vspace,
          vspace,
          vspace,
          Container(
            width: 200.0,
            height: 100.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2q74SUmgaqm9V8FV0HurRLkF6KYtKY3JoSA&usqp=CAU',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 160,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Items()));
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: green),
                  ),
                ),
              ),
            ],
          ),
          vspace,
          vspace,
          Row(
            children: [
              hspace,
              hspace,
              Image.asset("assets/images/Ellipse 7.png"),
              hspace,
              Image.asset("assets/images/Ellipse 8.png"),
              hspace,
              Image.asset("assets/images/Ellipse 9.png"),
              hspace,
              Image.asset("assets/images/Ellipse 10.png"),
            ],
          ),
          vspace,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "Best Selling",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 160,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Items()));
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: green),
                  ),
                ),
              ),
            ],
          ),
          vspace,
          vspace,
          Row(
            children: [
              hspace,
              hspace,
              hspace,
              hspace,
              hspace,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                              name: "Bell Pepper Red",
                              price: "1kg.4\$",
                              url: "assets/images/Rectangle 4382.png",
                              details:
                                  "Handpicked at peak ripeness, its crisp texture and rich, sweet taste elevate any dish. Packed with essential nutrients, it's the perfect ingredient to add color and health to your recipes")));
                },
                child: item(
                    text: "Bell Pepper Red",
                    price: "1kg. 4\$",
                    url: "assets/images/Rectangle 4382.png"),
              ),
              hspace,
              hspace,
              hspace,
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(
                              name: "Lamb meat",
                              price: "1kg.45\$",
                              url: "assets/images/Rectangle 4382-1.png",
                              details:
                                  "Lamb meat, a succulent delicacy, is tender and flavorful, ideal for hearty meals. Its rich taste and velvety texture make it a gourmet's choice. Packed with essential proteins.")));
                },
                child: item(
                    text: "Lamb meat",
                    price: "1kg. 45\$",
                    url: "assets/images/Rectangle 4382-1.png"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
