// foundations
import 'package:flutter/material.dart';

// 3rd party
import 'package:provider/provider.dart';

// mine
import 'core/ImageBloc.dart';
import 'ui/HomeView.dart';

class Application extends StatelessWidget {
  final title;

  Application(this.title);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ImageBloc>(
      builder: (_) => ImageBloc(),
      child: MaterialApp(
        title: title,
        home: HomeView(),
      ),
    );
  }
}
