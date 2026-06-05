import 'package:flutter/material.dart';

class RentalItem {
  final String location;
  final String price;
  final String distance;
  final String rating;
  final String imageUrl;

  RentalItem({
    required this.location,
    required this.price,
    required this.distance,
    required this.rating,
    required this.imageUrl,
  });
}

class HomePageModel {
  // Search state
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;

  // Tabs state
  TabController? tabBarController;

  // Mock Data for the rental application
  final List<RentalItem> homes = [
    RentalItem(
      location: 'Maidstone, San Antonio, Tx.',
      price: '\$210/night',
      distance: '32 miles away',
      rating: '4.25',
      imageUrl:
          'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?auto=format&fit=crop&w=1200&q=80',
    ),
    RentalItem(
      location: 'Hilltop Villa, Austin, Tx.',
      price: '\$450/night',
      distance: '15 miles away',
      rating: '4.90',
      imageUrl:
          'https://images.unsplash.com/photo-1613490493576-7fde63acd811?auto=format&fit=crop&w=1200&q=80',
    ),
  ];

  final List<RentalItem> products = [
    RentalItem(
      location: 'JBL Pro Sound System',
      price: '\$150/day',
      distance: 'Downtown',
      rating: '4.85',
      imageUrl:
          'https://images.unsplash.com/photo-1545454675-3531b543be5d?auto=format&fit=crop&w=1200&q=80',
    ),
    RentalItem(
      location: '4K Cinema Projector',
      price: '\$80/day',
      distance: '5 miles away',
      rating: '4.70',
      imageUrl:
          'https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=1200&q=80',
    ),
  ];

  final List<RentalItem> suppliers = [
    RentalItem(
      location: 'AV Rental Haven HQ',
      price: 'Rentals & Sales',
      distance: 'Main St.',
      rating: '5.0',
      imageUrl:
          'https://images.unsplash.com/photo-1586528116311-ad8dd3c8310d?auto=format&fit=crop&w=1200&q=80',
    ),
  ];

  void initState(BuildContext context) {}

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
    tabBarController?.dispose();
  }
}
