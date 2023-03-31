import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  const ProductCard({
    Key? key,
    required this.name,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              name: name,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(name),
              subtitle: Text(description),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ProductScreen({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2ba460),
        title: Text(name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Product Description:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Vivamus malesuada pharetra nibh, vitae maximus leo tincidunt ac. '
                  'Maecenas tincidunt mauris quis magna aliquam, nec hendrerit augue congue. '
                  'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. '
                  'Proin sagittis diam id dolor suscipit, a dictum massa sagittis. '
                  'Cras gravida est vel consectetur consequat.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price: ₱350',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Add to Cart'),
                        ),
                        SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Buy Now'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2ba460),
        elevation: 0,
        title: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
        actions: [
          SizedBox(width: 8),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        children: [
          ProductCard(
            name: 'Black School Backpack',
            description: '₱350',
            imageUrl:
                'https://down-ph.img.susercontent.com/file/a863f922934a21ffe1aa6002a4726af6_tn',
          ),
          ProductCard(
            name: 'White Rubber Shoes',
            description: '₱180',
            imageUrl:
                'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTmzxbpST9Q53SL_wcXMMetEvH_P-q8eZWTNIn7RhHcEMlF00X32TDtxf4n3Etz8-ZWGNfIekkAT3HXc1N3iDRPPdThLWbLgIBYixoLLPb8UXUGCtvNDShz&usqp=CAE',
          ),
          ProductCard(
            name: 'Assorted Canned Goods',
            description: '₱1,775',
            imageUrl:
                'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQrRxhHuOy2CuvWKpyW4zgsT-MQ9c-xiST52aGGcjDDdRSfTsWVq5h_qgxtkk6lQq_6OftNo8SzRVVOvn8HU_w7cMhgTcXWMl9wk1og8-VbriqsZwp6Gqvh&usqp=CAE',
          ),
          ProductCard(
            name: '10Kg Jasmine Rice',
            description: '₱675',
            imageUrl:
                'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcShBlfRkhj9Q3Aj3dT1ef2aX_r6t7ZNvif1s-VkSCm0CSseXtzNlYACHpr3I-n4CG6hS6mREwvwPO-AYFWdkBy4o89QNWE7XCfICctodhFA-mo8eXSx8P3-&usqp=CAE',
          ),
          ProductCard(
            name: 'Shorts',
            description: '₱55',
            imageUrl:
                'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRlSQ6GgtmZugnQD23zTdRV2qYxhegUdJ19ZkO8TCOypfcolAIHxpwnHhHChA3SNm-vxm5FXvyZR2KmvgXdx7uN8V8_Y966LR0aEcjnMFdtiMyRMp1iuaNyNw&usqp=CAE',
          ),
          ProductCard(
            name: 'T shirt',
            description: '₱70',
            imageUrl:
                'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ_n1Xxjy2KBEu8is1Lc2iY7DhjBomxoclEepF5ypctEE1MF0jaKi_dy3jk6JyAHmGoKsrvyAoDP_NMTLtZUQ79QLARyMvHKmPIukhmh35qUbsgy0JouQffyA&usqp=CAE',
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 5,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.message, color: Colors.grey),
              Icon(Icons.shopping_cart, color: Colors.grey),
              Icon(Icons.person, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
