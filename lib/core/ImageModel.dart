import 'dart:math';

class ImageModel {

  final List<String> imageNames = [
    'abstract_img.jpg',
    'alpaca.jpg',
    'bike_road.jpg',
    'kermit.jpg',
    'smile_me.png',
    'two_monkeys_and_a_monk.jpg',
  ];

  get _maxNumImages => imageNames.length - 1;

  int currentImageIndex = 0;

  get currentImagePath => 'assets/imgs/' +imageNames[currentImageIndex];

  int _checkImageIndex(int imageIndex){
    if(imageIndex > _maxNumImages) return 0;
    if(imageIndex < 0) return _maxNumImages;

    return imageIndex;
  }

  void randomImageIndex(){
    Random rnd = Random();
    var imageIndex = rnd.nextInt(_maxNumImages);
    currentImageIndex = imageIndex == currentImageIndex ? _checkImageIndex(imageIndex + 1) : imageIndex;
  }

  void carouselImageIndex({String direction = 'left'}){
    print('image length: ${imageNames.length}');
    var imageIndex = currentImageIndex + (direction == 'left' ?  -1 : 1);
    currentImageIndex = _checkImageIndex(imageIndex);
  }
}