import 'package:flutter/material.dart';
import 'payment_history_screen.dart';
import 'cart_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carpool_project/auth.dart';

class HomePage extends StatelessWidget {
  final User? user = Auth().currentUser;
  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text("firebase Auth");
  }

  Widget _userUid() {
    return Text(user?.email ?? "user email");
  }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text("sign out"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentHistoryScreen()),
              );
            },
            child: Text('Payment History'),
          ),
          SizedBox(width: 8),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
            child: Text('Go to Cart'),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildDummyRideCard(context, 'John Doe', 'ASU gate 4 - new cairo',
              '5:30 PM, 20 Dec', '55 EGP'),
          _buildDummyRideCard(context, 'Jane Doe', 'ASU gate 3 - new cairo',
              '6:00 PM, 20 Dec', '60 EGP'),
          _buildDummyRideCard(context, 'Alice Smith', 'ASU gate 4 - Heliopolis',
              '5:45 PM, 21 Dec', '50 EGP'),
          _buildDummyRideCard(context, 'Bob Johnson', 'ASU gate 3 - Maadi',
              '6:30 PM, 21 Dec', '70 EGP'),
          _buildDummyRideCard(context, 'Eva Green', 'ASU gate 4 - Downtown',
              '5:15 PM, 22 Dec', '65 EGP'),
          _buildDummyRideCard(context, 'Charlie Brown',
              'ASU gate 3 - Nasr City', '6:15 PM, 22 Dec', '75 EGP'),
        ],
      ),
    );
  }

  Widget _buildDummyRideCard(BuildContext context, String name, String location,
      String time, String cost) {
    return Card(
      margin: EdgeInsets.all(16),
      child: ListTile(
        title: Text(name),
        subtitle: Text('$location\n$time\n$cost'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                // Add to Cart logic
              },
              child: Text('Add to Cart'),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: () {
                // Book ride logic
              },
              child: Text('Book'),
            ),
          ],
        ),
      ),
    );
  }
}
