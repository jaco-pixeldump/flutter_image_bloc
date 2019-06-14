// foundations
import 'package:flutter/material.dart';

// 3rd party
import 'package:provider/provider.dart';

import 'ImageModel.dart';

class ImageBloc with ChangeNotifier {

  ImageModel _model = ImageModel();

  get currentImageIndex => _model.currentImageIndex;
  get currentImagePath => _model.currentImagePath;

  void carouselImageIndex({String direction = 'left'}){
    _model.carouselImageIndex(direction: direction);
    notifyListeners();
  }

  void randomImageIndex(){
    _model.randomImageIndex();
    notifyListeners();
  }
}