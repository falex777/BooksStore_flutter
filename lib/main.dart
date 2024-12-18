import 'package:flutter/material.dart';
import 'package:my_first_app/store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Книжный магазин',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black26,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 111, 96, 83),
        textTheme: TextTheme(
            bodyMedium: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            labelSmall: const TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 211, 211, 211),
            )),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => BooksList(title: 'Книжный магазин'),
        '/info': (context) => BookInfo(),
      },
    );
  }
}

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
        // backgroundColor: theme.colorScheme.inversePrimary,
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

class BookInfo extends StatefulWidget {
  const BookInfo({super.key});

  @override
  State<BookInfo> createState() => _BookInfoState();
}

class _BookInfoState extends State<BookInfo> {
  BookItem? book;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    super.didChangeDependencies();
    assert(args != null || args is int, 'Error: arguments must int');
    int index = args as int;
    book = booksStore[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Информация о книге "${book?.title}"'),
      ),
      body: Center(
        child: Image.asset(
          'assets/img/${book?.img}',
          width: 200,
          height: 200,
        ),
      )
    );
  }
}
