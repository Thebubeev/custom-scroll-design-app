import 'package:flutter/material.dart';

class ListStarredPostsWidgets extends StatelessWidget {
  const ListStarredPostsWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 12, top: 14),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Starred posts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.grey[700]),
            ),
            const StarredPostsWidgets(),
          ]),
        ),
      ),
    );
  }
}

class StarredPostsWidgets extends StatelessWidget {
  const StarredPostsWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Card(
        color: const Color.fromARGB(255, 240, 242, 245),
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Qyre US Production',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey[700])),
                const Text(
                  '1 day ago',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ]),
              const Divider(
                color: Colors.white,
                thickness: 0.4,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Updated priviligies for current',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black)),
                  ],
                ),
              ),
              const Text(
                "I changed your admin roles to posters. With\nthat you can't send out offers. Just use the\ncommunication tool to get all the features!",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
