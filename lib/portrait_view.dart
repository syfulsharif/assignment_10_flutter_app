import 'package:flutter/material.dart';

class PortraitView extends StatefulWidget {
  const PortraitView({super.key});

  @override
  State<PortraitView> createState() => _PortraitViewState();
}

class _PortraitViewState extends State<PortraitView> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 350.0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1552168324-d612d77725e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80'),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'John Doe',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Jane Andrews is a visionary photographer with an unparalleled ability to encapsulate the beauty of the world through her captivating images.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
