import 'package:flutter/material.dart';

class PaymentHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment History'),
      ),
      body: ListView(
        children: [
          _buildDummyBookingCard(context, 'John Doe', 'ASU gate 4 - new cairo', '5:30 PM, 15 Dec', '55 EGP'),
          _buildDummyBookingCard(context, 'Jane Doe', 'ASU gate 3 - new cairo', '6:00 PM, 16 Dec', '60 EGP'),
          _buildDummyBookingCard(context, 'Alice Smith', 'ASU gate 4 - Heliopolis', '5:45 PM, 17 Dec', '50 EGP'),
          _buildDummyBookingCard(context, 'Bob Johnson', 'ASU gate 3 - Maadi', '6:30 PM, 18 Dec', '70 EGP'),
          _buildDummyBookingCard(context, 'Eva Green', 'ASU gate 4 - Downtown', '5:15 PM, 19 Dec', '65 EGP'),
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
