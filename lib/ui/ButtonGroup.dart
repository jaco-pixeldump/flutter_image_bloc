// foundations
import 'package:flutter/material.dart';

// 3rd party
import 'package:provider/provider.dart';

// mine
import 'package:image_bloc/core/ImageBloc.dart';

class ButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImageBloc bloc = Provider.of<ImageBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {
            bloc.carouselImageIndex();
          },
          child: Icon(Icons.keyboard_arrow_left),
        ),
        SizedBox(width: 20),
        FloatingActionButton.extended(
          onPressed: () {
            bloc.randomImageIndex();
          },
          icon: Icon(Icons.shuffle),
          label: Text('random'),
        ),
        SizedBox(width: 20),
        FloatingActionButton(
          onPressed: () {
            bloc.carouselImageIndex(direction: 'right');
          },
          child: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
