import 'package:flutter/material.dart';
import 'package:menyou/Widgets/menuitem.dart';
class FoodMenu extends StatelessWidget {
  final List<MenuItemCard> items = [
    MenuItemCard(
      title: 'Grilled Chicken',
      description: 'Juicy grilled chicken breast served with a side of roasted vegetables.',
      image: 'https://hips.hearstapps.com/hmg-prod/images/grilled-cheese-horizontal-jpg-1522266016.jpg?crop=1.00xw:0.753xh;0,0.105xh&resize=1200:*',
      price: 12.99,
    ),
    MenuItemCard(
      title: 'Pesto Pasta',
      description: 'Freshly made pasta tossed in a homemade basil pesto sauce.',
      image: 'https://www.foodandwine.com/thmb/97PY4E6Wk95IYv1_8pDZvBEi0Uw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/cream-tomato-rigatoni-FT-RECIPE1020-139fb3fa52574e8bb06f98e7fa3e4f1e.jpg',
      price: 9.99,
    ),
    MenuItemCard(
      title: 'Margherita Pizza',
      description: 'Classic pizza topped with fresh mozzarella, tomato sauce, and basil.',
      image: 'https://www.simplyrecipes.com/thmb/KRw_r32s4gQeOX-d07NWY1OlOFk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg',
      price: 14.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return MenuItemCard(
          title: items[index].title,
          description: items[index].description,
          image: items[index].image,
          price: items[index].price,
        );
      },
    );
  }
}
