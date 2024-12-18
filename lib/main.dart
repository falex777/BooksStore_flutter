import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Типография',
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
        '/': (context) => TypographyCatalog(title: 'Типография. Каталог услуг'),
        '/info': (context) => ServiceInfo(),
      },
    );
  }
}

class TypographyCatalog extends StatefulWidget {
  const TypographyCatalog({super.key, required this.title});
  final String title;

  @override
  State<TypographyCatalog> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TypographyCatalog> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: theme.colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemCount: 20,
          separatorBuilder: (context, index) => const Divider(
                color: Colors.white30,
              ),
          itemBuilder: (context, index) => ListTile(
                leading: Image.asset(
                  'assets/img/117.png',
                  width: 50,
                  height: 50,
                ),
                title: Text(
                  '$index Item',
                  style: theme.textTheme.bodyMedium
                ),
                subtitle:
                    Text('Подзаголовок', style: theme.textTheme.labelSmall),
                trailing: Icon(Icons.add),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/info',
                    arguments: {'index': index},
                  );
                },
              )),
    );
  }
}

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Информация о услуге'),
      ),
    );
  }
}
