// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyBooks extends StatelessWidget {
  const MyBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'My Books',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        bookListView()
      ],
    );
  }
}

class bookListView extends StatelessWidget {
  const bookListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150,
        height: 200,
        child: GridView.count(
          childAspectRatio: 1.2,
          scrollDirection: Axis.horizontal,
          crossAxisCount: 1,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.network(
                            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1633443634l/57109107._SY475_.jpg'),
                        Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(5, (index) {
                              return Icon(
                                index < 4 ? Icons.star : Icons.star_border,
                                size: 30,
                                color: Colors.white,
                              );
                            }))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                    height: 42,
                    child: Text(
                      'The Lincoln Highway',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.network(
                            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1611848428l/48915818.jpg'),
                        Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(5, (index) {
                              return Icon(
                                index < 3 ? Icons.star : Icons.star_border,
                                size: 30,
                                color: Colors.white,
                              );
                            }))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                    height: 42,
                    child: Text(
                      'The Death of Jane Lawrence',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.network(
                            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1617877772l/55881796._SY475_.jpg'),
                        Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(5, (index) {
                              return Icon(
                                index < 4 ? Icons.star : Icons.star_border,
                                size: 30,
                                color: Colors.white,
                              );
                            }))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                    height: 42,
                    child: Text(
                      'Crossroads',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.network(
                            'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1633444431l/56898303._SY475_.jpg'),
                        Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(5, (index) {
                              return Icon(
                                index < 5 ? Icons.star : Icons.star_border,
                                size: 30,
                                color: Colors.white,
                              );
                            }))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 100,
                    height: 42,
                    child: Text(
                      'We Are Not Like Them',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
