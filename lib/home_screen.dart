 import 'package:flutter/material.dart';
import 'package:theme_example_flutter/theme_switcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          IconButton(onPressed: () {
            ThemeController().switchTheme();
          }, icon: const Icon(Icons.brightness_6))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const CircularProgressIndicator(),
          Text('Headline1', style: Theme.of(context).textTheme.headline1,),
          Text('Headline2', style: Theme.of(context).textTheme.headline2,),
          Text('Headline3', style: Theme.of(context).textTheme.headline3,)
        ],
      ),
    );
  }
}
