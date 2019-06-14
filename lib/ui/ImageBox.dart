// foundations
import 'package:flutter/material.dart';

// 3rd party
import 'package:provider/provider.dart';

// mine
import 'package:image_bloc/core/ImageBloc.dart';

class ImageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImageBloc bloc = Provider.of<ImageBloc>(context);

    return Expanded(
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 1000,
              child: OverflowBox(
                maxWidth: double.infinity,
                child: Image.asset(
                  bloc.currentImagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  '# ${bloc.currentImageIndex + 1}',
                  style: TextStyle(
                    fontSize: 60,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
