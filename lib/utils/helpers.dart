import 'package:flutter/material.dart';

class Helpers {
  // Format price with currency
  static String formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // Show a snackbar message
  static void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  // Any additional helper functions can be added here
}
