import 'package:flutter/material.dart';
import 'package:hotelsearchuinew/hotelcontents.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HotelSearchPageUI(),
      ),
    );

class HotelSearchPageUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.blueGrey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Hello YASH!!',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  'Find your favorite hotel',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: const Color.fromARGB(255, 234, 233, 233),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 5.0,
                                  ),
                                ],
                              ),
                              child: const CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.hindustantimes.com/img/2022/02/28/550x309/7832faee-9632-11ec-9470-469037641c48_1646069142106.jpg'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color.fromARGB(255, 234, 233, 233),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search for hotels..'),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Popular Hotels near you..',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              Map data = hoteldetails[index];
                              return Card(
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        color: Colors.black,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                            data['hotelmage'],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 125,
                                      left: 5,
                                      child: Text(
                                        data['hotelname'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Positioned(
                                      top: 146,
                                      left: 5,
                                      child: Text(
                                        data['hoteldescription'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 11),
                                      ),
                                    ),
                                    Positioned(
                                      top: 164,
                                      left: 5,
                                      child: Text(
                                        data['hotelrate'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11),
                                      ),
                                    ),
                                    Positioned(
                                      top: 164,
                                      right: 5,
                                      child: Row(
                                        children: [
                                          const Icon(Icons.star),
                                          Text(
                                            data['hotelrating'],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.amberAccent,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Choose the best Hotel Package',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'View All',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              Map data = hoteldetails[index];
                              return Card(
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                        ),
                                        color: Colors.black,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                            data['hotelmage'],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 150,
                                      child: Text(
                                        data['hotelname'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ),
                                    Positioned(
                                      top: 37,
                                      left: 150,
                                      child: Text(
                                        data['hoteldescription'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Positioned(
                                      top: 62,
                                      left: 150,
                                      child: Text(
                                        data['hotelrate'],
                                        style: const TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                    ),
                                    Positioned(
                                      top: 80,
                                      right: 150,
                                      child: Row(
                                        children: [
                                          const Icon(Icons.star,
                                              color: Colors.red),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            data['hotelrating'],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 70,
                                      right: -25,
                                      child: Container(
                                        height: 50,
                                        width: 100,
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Book \nNow',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            // scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        barHeight: 50,
        domeCircleColor: Colors.red,
        domeHeight: 0,
        barColor: Colors.blueGrey,
        selectedIndex: 0,
        onTabChange: (clickedIndex) {},
        tabs: [
          MoltenTab(
            icon: Icon(Icons.home),
          ),
          MoltenTab(
            icon: Icon(Icons.search),
          ),
          MoltenTab(
            icon: Icon(Icons.person),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: Colors.white,
      //   selectedItemColor: Colors.red,
      //   backgroundColor: Colors.blueGrey,
      //   items: const [
      //     BottomNavigationBarItem(
      //       label: 'Home',
      //       icon: Icon(Icons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Explore',
      //       icon: Icon(Icons.search),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Profile',
      //       icon: Icon(Icons.person),
      //     ),
      //   ],
      // ),
    );
  }
}
