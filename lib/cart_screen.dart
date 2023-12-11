import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView(
        children: [
          _buildDummyBookingCard(context, 'Ali Hesham', 'ASU gate 4 - new cairo', '5:30 PM, 25 Dec', '55 EGP'),
          _buildDummyBookingCard(context, 'Ahmed Hazem', ' new cairo - ASU gate 3', '7:30 AM, 26 Dec', '60 EGP'),
          _buildDummyBookingCard(context, 'Alice Smith', 'ASU gate 4 - Heliopolis', '5:30 PM, 27 Dec', '50 EGP'),
          _buildDummyBookingCard(context, 'Bob Johnson', 'ASU gate 3 - Maadi', '5:30 PM, 28 Dec', '70 EGP'),
          _buildDummyBookingCard(context, 'Eva Green', 'ASU gate 4 - Downtown', '5:30 PM, 29 Dec', '65 EGP'),
        ],
      ),
    );
  }

  Widget _buildDummyBookingCard(BuildContext context, String name, String location, String time, String cost) {
    return Card(
      margin: EdgeInsets.all(16),
      child: ListTile(
        title: Text(name),
        subtitle: Text('$location\n$time\n$cost'),
      ),
    );
  }
}
