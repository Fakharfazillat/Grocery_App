import 'package:flutter/material.dart';
import 'common_widgets.dart';
import 'package:flutter_application_6/detail_page.dart';
import 'package:flutter_application_6/utils.dart';

class Items extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'text': 'Red Beens',
      'price': '1kg. 4\$',
      'url': 'assets/images/Rectangle 4382-6.png',
      'details':
          'Red beans, also known as kidney beans, boast a rich, hearty flavor and a smooth, velvety texture. These legumes are a staple in many cuisines, offering a robust taste perfect for soups.',
    },
    {
      'text': 'Fresh Tomatoes',
      'price': '1kg. 6\$',
      'url': 'assets/images/Rectangle 4382-9.png',
      'details':
          'Fresh tomatoes are plump, flavorful fruits known for their vibrant red hue. With a juicy and slightly acidic taste, they offer a delightful burst of freshness.',
    },
    {
      'text': 'Bell Pepper',
      'price': '1kg. 10\$',
      'url': 'assets/images/Rectangle 4382-5.png',
      'details':
          'Bell peppers, with their crisp texture and vibrant colors, offer a delightful crunch and sweet taste. These versatile vegetables come in various hues like red, green, and yellow.',
    },
    {
      'text': 'Potatoes',
      'price': '1kg. 8\$',
      'url': 'assets/images/Rectangle 4382-8.png',
      'details':
          'Potatoes, renowned for their versatility, present a starchy texture and mild flavor. These tubers can be boiled, mashed, roasted, or fried, offering endless culinary possibilities. ',
    },
    {
      'text': 'Green Salad',
      'price': '1kg. 7\$',
      'url': 'assets/images/Rectangle 4382-2.png',
      'details':
          'A green salad embodies freshness, combining crisp, leafy greens with an assortment of vibrant vegetables. Its medley of textures, from crunchy to tender, offers a refreshing experience',
    },
    {
      'text': 'onion',
      'price': '1kg. 12\$',
      'url': 'assets/images/Rectangle 4382-7.png',
      'details':
          'Onions, with their pungent aroma and versatile nature, are culinary staples that come in various types like red, yellow, and white. These flavorful bulbs offer a distinct taste.',
    },
    {
      'text': 'Salad',
      'price': '1kg. 4\$',
      'url': 'assets/images/Rectangle 4382-3.png',
      'details':
          'A salad is a harmonious blend of fresh, crisp ingredients such as leafy greens, vegetables, fruits, nuts, and dressings. It is a customizable dish that offers a spectrum of flavors and textures.',
    },
    {
      'text': 'Carrot',
      'price': '1kg. 7\$',
      'url': 'assets/images/Rectangle 4382-4.png',
      'details':
          'Carrots, known for their vibrant orange hue and natural sweetness, boast a crunchy texture and earthy flavor. These root vegetables are packed with beta-carotene, offering various health benefits',
    },
  ];
  Items({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                "vegetables",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Icon(
              Icons.search_outlined,
              color: green,
              size: 30,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vspace,
            vspace,
            vspace,
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 210),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                    name: items[index]['text']!,
                                    price: items[index]['price']!,
                                    url: items[index]['url']!,
                                    details: items[index]['details']!)));
                      },
                      child: item(
                          text: items[index]['text']!,
                          price: items[index]['price']!,
                          url: items[index]['url']!),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
