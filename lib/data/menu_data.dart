// lib/data/menu_data.dart
import '../models/menu_item.dart';

class MenuData {
  static final List<MenuItem> desserts = [
    MenuItem(
      id: 'dessert_1',
      name: 'Matcha Soft Serve',
      price: 20000,
      category: 'Desserts',
      imagePath: 'assets/menu/desserts/matcha.png',
      route: '/menu-matcha-soft-serve',
    ),
    MenuItem(
      id: 'dessert_2',
      name: 'Mango Sticky Rice',
      price: 28000,
      category: 'Desserts',
      imagePath: 'assets/menu/desserts/mango.png',
      route: '/menu-mango-sticky-rice',
    ),
    MenuItem(
      id: 'dessert_3',
      name: 'Brownie Fudge Sundae',
      price: 30000,
      category: 'Desserts',
      imagePath: 'assets/menu/desserts/brownie.png',
      route: '/menu-fudge-sundae',
    ),
    MenuItem(
      id: 'dessert_4',
      name: 'Red Velvet Cheesecake',
      price: 38000,
      category: 'Desserts',
      imagePath: 'assets/menu/desserts/red-velvet.png',
      route: '/menu-red-velvet-cheesecake',
    ),
  ];

  static final List<MenuItem> drinks = [
    MenuItem(
      id: 'drink_1',
      name: 'Cheese Boba Latte',
      price: 20000,
      category: 'Drinks',
      imagePath: 'assets/menu/drinks/Cheese_Boba_Latte.png',
      route: '/menu-cheese-boba-latte',
    ),
    MenuItem(
      id: 'drink_2',
      name: 'Chocolate Mousse',
      price: 25000,
      category: 'Drinks',
      imagePath: 'assets/menu/drinks/chocolate-mousse.png',
      route: '/menu-chocolate-mousse',
    ),
    MenuItem(
      id: 'drink_3',
      name: 'Brown Sugar Milk Tea',
      price: 25000,
      category: 'Drinks',
      imagePath: 'assets/menu/drinks/brown-sugar.png',
      route: '/menu-brown-sugar-milk-tea',
    ),
    MenuItem(
      id: 'drink_4',
      name: 'Iced Caramel Macchiato',
      price: 32000,
      category: 'Drinks',
      imagePath: 'assets/menu/drinks/iced-caramel.png',
      route: '/menu-iced-caramel-macchiato',
    ),
    MenuItem(
      id: 'drink_5',
      name: 'Biscoff Hot Chocolate',
      price: 35000,
      category: 'Drinks',
      imagePath: 'assets/menu/drinks/biscoff.png',
      route: '/menu-biscoff-hot-chocolate',
    ),
  ];

  static final List<MenuItem> mainCourse = [
    MenuItem(
      id: 'main_1',
      name: 'Chicken Katsu Curry',
      price: 45000,
      category: 'Main Course',
      imagePath: 'assets/menu/main-course/chicken-katsu-curry.png',
      route: '/menu-chicken-katsu-curry',
    ),
    MenuItem(
      id: 'main_2',
      name: 'Teriyaki Chicken Rice',
      price: 42000,
      category: 'Main Course',
      imagePath: 'assets/menu/main-course/teriyaki-chicken-rice.png',
      route: '/menu-teriyaki-chicken-rice',
    ),
    MenuItem(
      id: 'main_3',
      name: 'Spaghetti Aglio e Olio',
      price: 40000,
      category: 'Main Course',
      imagePath: 'assets/menu/main-course/spaghetti.png',
      route: '/menu-fried-chicken',
    ),
    MenuItem(
      id: 'main_4',
      name: 'Korean Fried Chicken',
      price: 48000,
      category: 'Main Course',
      imagePath: 'assets/menu/main-course/kfc.png',
      route: '/menu-fried-chicken',
    ),
  ];

  static final List<MenuItem> snacks = [
    MenuItem(
      id: 'snack_1',
      name: 'Loaded Fries',
      price: 28000,
      category: 'Snacks',
      imagePath: 'assets/menu/snacks/loaded-fries.png',
      route: '/menu-loaded-fries',
    ),
    MenuItem(
      id: 'snack_2',
      name: 'Mozarella Sticks',
      price: 25000,
      category: 'Snacks',
      imagePath: 'assets/menu/snacks/mozarella-sticks.png',
      route: '/menu-mozarella-sticks',
    ),
    MenuItem(
      id: 'snack_3',
      name: 'Takoyaki Balls',
      price: 27000,
      category: 'Snacks',
      imagePath: 'assets/menu/snacks/takoyaki-balls.png',
      route: '/menu-takoyaki-balls',
    ),
    MenuItem(
      id: 'snack_4',
      name: 'Crispy Chicken Skin',
      price: 22000,
      category: 'Snacks',
      imagePath: 'assets/menu/snacks/crispy-chicken-skin.png',
      route: '/menu-crispy-chicken-skin',
    ),
  ];

  static List<MenuItem> getAllItems() {
    return [...desserts, ...drinks, ...mainCourse, ...snacks];
  }

  static MenuItem? getItemById(String id) {
    try {
      return getAllItems().firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }
}
