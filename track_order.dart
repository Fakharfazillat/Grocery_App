import 'package:flutter/material.dart';
import 'package:flutter_application_6/utils.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBMmxz4IYD3jk-IieRX9bDRj_2P1Kyd0XymA&usqp=CAU"),
                        fit: BoxFit.cover)),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "on the way",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110, top: 10),
                child: Icon(
                  Icons.watch_later_outlined,
                  color: green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Text(
                  "10 Min",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
              )
            ],
          ),
          vspace,
          vspace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Order Placed",
                style: TextStyle(
                    fontSize: 15, color: green, fontWeight: FontWeight.w500),
              ),
              Text(
                "On the way",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                "Delivered",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          vspace,
          vspace,
          ListTile(
            leading: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKAow4o83Lcyh1oR4Huj3F837w8DKc0s6-wg&usqp=CAU"),
            title: Text(
              "Your delivery hero",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "Abdulmalik Qasim",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.message,
                  color: green,
                ),
                hspace,
                hspace,
                hspace,
                Icon(
                  Icons.call,
                  color: green,
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.circle_outlined,
              color: Colors.pink,
              size: 35,
            ),
            title: Text(
              "Store",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "Insta Grocery Store",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: green,
              size: 35,
            ),
            title: Text(
              "Your place",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              "Queens Road Londoon",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
