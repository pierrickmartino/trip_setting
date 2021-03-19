import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc.dart';
import 'country_edit_dialog.dart';
import 'database/database.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        RepositoryProvider<Database>(
            // ignore: avoid_redundant_argument_values
            lazy: true,
            create: (context) => constructDb(logStatements: false)),
        BlocProvider<ApplicationBloc>(
          lazy: true,
          create: (context) {
            final db = RepositoryProvider.of<Database>(context);
            return ApplicationBloc(db);
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ApplicationBloc get bloc => BlocProvider.of<ApplicationBloc>(context);

  Future<int> _future;

  /// To improve performance, the database must be filled before any display
  /// Replacing the listView with a blankPage is a huge gain in write performance
  /// Frost is now almost non-existent
  void initDatabase() {
    _future = bloc.getCountriesCounter;
  }

  @override
  Widget build(BuildContext context) {
    // For performance issue, very important to call this function on top of the others
    initDatabase();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child:
              // StreamBuilder<List<WeatherWithCountry>>(
              //   stream: bloc.getWeatherWithCountry(null),
              //   builder: (context, snapshot) {
              //     List<Widget> children;
              //     if (snapshot.hasData) {
              //       children = <Widget>[
              //         Container(
              //           height: MediaQuery.of(context).size.height * 0.95,
              //           width: MediaQuery.of(context).size.width * 0.95,
              //           child: ListView.builder(
              //             itemCount: snapshot.data.length,
              //             padding: const EdgeInsets.symmetric(vertical: 5),
              //             itemBuilder: (context, index) {
              //               return ListTile(
              //                 title: Text(snapshot.data[index].country.label),
              //                 subtitle: Text(
              //                     'Security score : ${snapshot.data[index].country.security}'),
              //                 trailing: IconButton(
              //                   icon: const Icon(Icons.edit),
              //                   onPressed: () {
              //                     showDialog(
              //                       context: context,
              //                       builder: (context) => CountryEditDialog(
              //                         entry: snapshot.data[index],
              //                       ),
              //                     );
              //                   },
              //                 ),
              //               );
              //             },
              //           ),
              //         ),
              //       ];
              //     } else if (snapshot.hasError) {
              //       children = <Widget>[
              //         const Icon(
              //           Icons.error_outline,
              //           color: Colors.red,
              //           size: 60,
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(top: 16),
              //           child: Text('Error: ${snapshot.error}'),
              //         )
              //       ];
              //     } else {
              //  children = <Widget>[
              //    const SizedBox(
              //      width: 60,
              //      height: 60,
              //      child: CircularProgressIndicator(),
              //    ),
              //    const Padding(
              //      padding: EdgeInsets.only(top: 16),
              //      child: Text('Awaiting result...'),
              //    )
              //  ];
              //     }
              //     return Center(
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: children,
              //       ),
              //     );
              //   },
              // ),
              Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Awaiting result...'),
            ),
          ],
        ),
      )),
    );
  }
}
