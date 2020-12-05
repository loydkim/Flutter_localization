import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Localization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: (){
                      setState(() {
                        S.load(Locale('en', 'US'));
                      });
                    },
                    child: Text('English'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: (){

                      setState(() {
                        S.load(Locale('es', 'SP'));
                      });
                    },
                    child: Text('Spanish'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: (){
                      setState(() {
                        S.load(Locale(S.of(context).localeName, ''));
                      });
                    },
                    child: Text('Setting Language'),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                'Current locale name is ${S.of(context).localeName}',
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                S.of(context).HelloWorld,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
