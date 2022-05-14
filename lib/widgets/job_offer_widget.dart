import 'package:flutter/material.dart';

class ListJobOffersWidgets extends StatelessWidget {
  const ListJobOffersWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const 
           EdgeInsets.only(left: 10, right: 10, bottom: 12, top: 14),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [ Text("My job offers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.grey[700])),
          
          const JobOffersWidgets(),
          const JobOffersWidgets(),
        ]),
      ),
    );
  }
}

class JobOffersWidgets extends StatelessWidget {
  const JobOffersWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: Card(
            color: const Color.fromARGB(255, 240, 242, 245),
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Boom operator',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                color: Colors.grey[700])),
                        const Text(
                          'Jun 12, 2021',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ]),
                  const Padding(
                    padding: EdgeInsets.only(top: 2, bottom: 2),
                    child: Divider(
                      color: Colors.white,
                      thickness: 0.4,
                    ),
                  ),
                  const Text('Masterchef',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.black)),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Jun 14, 2022 - Feb 23, 2022',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        '3 days',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
