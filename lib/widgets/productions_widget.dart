import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListProductionsWidgets extends StatelessWidget {
  const ListProductionsWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, bottom: 12, top: 14),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 12,
          ),
          Text(
            "Today's productions",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.grey[700]),
          ),
          const SizedBox(
            height: 6,
          ),
          albomCard(
            'assets/images/Albom1.png',
            'Production Name That is Long             ',
            'Sweden  Jan 14, 2022 - Feb 23, 2023',
          ),
          albomCard(
            'assets/images/Albom2.png',
            'What has bee seen very very long te...',
            'Sweden  Jan 14, 2022 - Feb 23, 2023',
          ),
          coloredCard()
        ]),
      ),
    );
  }

  Padding coloredCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          cardWidget(
              'assets/images/Users.svg',
              const Color.fromARGB(255, 52, 101, 195),
              const Color.fromARGB(255, 87, 133, 222),
              'My network',
              'Connect and grow your network'),
          cardWidget(
              'assets/images/Vector.svg',
              const Color.fromARGB(255, 236, 78, 39),
              const Color.fromARGB(255, 244, 126, 97),
              'Quick hire',
              'Hire someone quickly today'),
          cardWidget(
              'assets/images/Subtract.svg',
              const Color.fromARGB(255, 107, 52, 195),
              const Color.fromARGB(255, 142, 94, 219),
              'My CV',
              'Keep your CV updated to get the best offers'),
        ],
      ),
    );
  }

  GestureDetector albomCard(String imageUrl, String title, String subtitle) {
    return GestureDetector(
      onTap: () {
        debugPrint('go to albom');
      },
      child: Card(
        elevation: 0,
        color: const Color.fromARGB(255, 240, 242, 245),
        child: Stack(
          children: [
            Row(children: [
              Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  bottom: 10,
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 101, 101, 101)),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              const Expanded(
                child: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 20,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }

  Expanded cardWidget(String imageUrl, Color color1, Color color2, String title,
      String subtitle) {
    return Expanded(
      child: SizedBox(
        height: 145,
        child: Card(
          child: InkWell(
            onTap: () {
              debugPrint('go to page');
            },
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [color1, color2],
                )),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          imageUrl,
                          width: 35,
                          height: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(subtitle,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ))
                      ]),
                )),
          ),
        ),
      ),
    );
  }
}
