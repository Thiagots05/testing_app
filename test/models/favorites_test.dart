import 'package:test/test.dart';
import 'package:testing_app/models/favorites.dart';

void main(){
  group('Testing App Provider', (){
    var favorites = Favorites();

    test('A new item should be added', (){
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('An item should be removed', (){
      var number = 46;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);      
    });

     test('Should throw an error when trying to remove an item not in the list', (){
       var number = 99;
       expect(() => favorites.remove(number), throwsException);    
    });
  });
}

