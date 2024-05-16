import 'dart:ui';
import 'package:flutter/material.dart';

class DataExplore {
  String image;
  String title;
  int color;

  DataExplore({required this.image, required this.title, required this.color});
}

class DataBeverages {
  String image;
  String title;
  String subTitle;
  String Price;
  int color;

  DataBeverages(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.Price,
      required this.color});
}

class DataMyCart {
  String image;
  String title;
  String subTitle;
  String Price;
  int count;

  DataMyCart(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.Price,
      required this.count
      });
}

class DataBtnShit {
  String start;
  String end;
  Icon icon;

  DataBtnShit({required this.start, required this.end, required this.icon});
}

class LocalData {
  List<DataExplore> dataExplore = [
    DataExplore(
      image: "assets/images/explore_Image/img_4.png",
      title: "Frash Fruits & Vegetable",
      color: 0xFFEEF7F1,
    ),
    DataExplore(
      image: "assets/images/explore_Image/img.png",
      title: "Cooking Oil & Ghee",
      color: 0xFFEEF7F1,
    ),
    DataExplore(
        image: "assets/images/explore_Image/img_1.png",
        title: "Meat & Fish",
        color: 0xFFFDE8E4),
    DataExplore(
        image: "assets/images/explore_Image/img_2.png",
        title: "Bakery & Snacks",
        color: 0xFFF4EBF7),
    DataExplore(
        image: "assets/images/explore_Image/img_3.png",
        title: "Dairy & Eggs",
        color: 0xFF2C2C2C),
    DataExplore(
        image: "assets/images/explore_Image/img_5.png",
        title: "Beverages",
        color: 0xFFEDF7FC),
    DataExplore(
        image: "assets/images/explore_Image/img.png",
        title: "Cooking Oil & Ghee",
        color: 0xFF2C2C2C),
    DataExplore(
        image: "assets/images/explore_Image/img_4.png",
        title: "Frash Fruits & Vegetable",
        color: 0xFFEDF7FC),
    DataExplore(
        image: "assets/images/explore_Image/img_2.png",
        title: "Bakery & Snacks",
        color: 0xFFFDE8E4),
  ];

  List<DataBeverages> dataBeverager = [
    DataBeverages(
      image: "assets/images/beverages_image/img.png",
      title: "Diet Coke",
      subTitle: "355ml, Price",
      Price: "\$1.99",
      color: 0xFFEEF7F1,
    ),
    DataBeverages(
        image: "assets/images/beverages_image/img_1.png",
        title: "Sprite Can",
        subTitle: "325ml, Price",
        Price: "\$1.50",
        color: 0xFFEEF7F1),
    DataBeverages(
        image: "assets/images/beverages_image/img_2.png",
        title: "Apple & Grape Juice",
        subTitle: "2L, Price",
        Price: "\$5.99",
        color: 0xFFEEF7F1),
    DataBeverages(
        image: "assets/images/beverages_image/img_3.png",
        title: "Orenge Juice",
        subTitle: "2L, Price",
        Price: "\$8.99",
        color: 0xFFEDF7FC),
    DataBeverages(
      image: "assets/images/beverages_image/img_4.png",
      title: "Coca Cola Can",
      subTitle: "325ml, Price",
      Price: "\$4.99",
      color: 0xFFEEF7F1,
    ),
    DataBeverages(
        image: "assets/images/beverages_image/img_5.png",
        title: "Pepsi Can ",
        subTitle: "330ml, Price",
        Price: "\$4.99",
        color: 0xFFEEF7F1),
    DataBeverages(
      image: "assets/images/beverages_image/img.png",
      title: "Diet Coke",
      subTitle: "355ml, Price",
      Price: "\$1.99",
      color: 0xFFEEF7F1,
    ),
    DataBeverages(
        image: "assets/images/beverages_image/img_1.png",
        title: "Sprite Can",
        subTitle: "325ml, Price",
        Price: "\$1.50",
        color: 0xFFEDF7FC),
  ];

  List<DataMyCart> dataMyCart = [
    DataMyCart(
      image: "assets/images/cart/img.png",
      title: "Bell Pepper Red",
      subTitle: "1kg, Price",
      Price: "\$4.50",
      count: 0
    ),
    DataMyCart(
      image: "assets/images/cart/img_1.png",
      title: "Egg Chicken Red ",
      subTitle: "4pcs, Price",
      Price: "\$6.50",
      count: 0
    ),
    DataMyCart(
      image: "assets/images/cart/img_2.png",
      title: "Organic Bananas",
      subTitle: "12kg, Price",
      Price: "\$1.99",
      count: 0
    ),
    DataMyCart(
      image: "assets/images/cart/img_3.png",
      title: "Ginger ",
      subTitle: "250gm, Price",
      Price: "\$7.50",
      count: 0
    ),
  ];

  List<DataBtnShit> dataBtnShit = [
    DataBtnShit(
        start: "Delivery",
        end: "Select Method",
        icon: Icon(
          Icons.navigate_next,
          size: 35,
        )),
    DataBtnShit(
        start: "Pament",
        end: "**",
        icon: Icon(
          Icons.navigate_next,
          size: 35,
        )),
    DataBtnShit(
        start: "Promo Code",
        end: "Pick discount",
        icon: Icon(
          Icons.navigate_next,
          size: 35,
        )),
    DataBtnShit(
        start: "Total Cost",
        end: "\$13.97",
        icon: Icon(
          Icons.navigate_next,
          size: 35,
        )),
  ];

  List<DataBtnShit> dataBtnShit2 = [
    DataBtnShit(
        start: "Name",
        end: "",
        icon: Icon(
          Icons.dew_point,
          size: 1,
        )),
    DataBtnShit(
        start: "Description",
        end: "",
        icon: Icon(
          Icons.dew_point,
          size: 1,
        )),
    DataBtnShit(
        start: "Price",
        end: "",
        icon: Icon(
          Icons.dew_point,
          size: 1,
        )),

  ];
}
