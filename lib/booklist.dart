import 'package:flutter/material.dart';
import 'package:my_first_app/repository.dart';

class BooksList extends StatefulWidget {
  const BooksList({super.key, required this.title});
  final String title;

  @override
  State<BooksList> createState() => _BooksList();
}

class _BooksList extends State<BooksList> {
  final bookStore = booksStore;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemCount: bookStore.length,
          separatorBuilder: (context, index) => const Divider(
                color: Colors.white30,
              ),
          itemBuilder: (context, index) => ListTile(
                leading: Image.asset(
                  'assets/img/${bookStore[index].img}',
                  width: 50,
                  height: 50,
                ),
                title: Text(bookStore[index].title,
                    style: theme.textTheme.bodyMedium),
                subtitle: Text(bookStore[index].author,
                    style: theme.textTheme.labelSmall),
                trailing: Text(
                    '${bookStore[index].price.toInt().toString()} р.',
                    style: theme.textTheme.labelSmall),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/info',
                    arguments: index,
                  );
                },
              )),
    );
  }
}