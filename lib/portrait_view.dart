import 'package:assignment10/image.dart';
import 'package:flutter/material.dart';

class PortraitView extends StatefulWidget {
  const PortraitView({super.key});

  @override
  State<PortraitView> createState() => _PortraitViewState();
}

class _PortraitViewState extends State<PortraitView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            width: double.infinity,
            height: 350.0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1552168324-d612d77725e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80'),
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'John Doe',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Jane Andrews is a visionary photographer with an unparalleled ability to encapsulate the beauty of the world through her captivating images.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.spaceBetween,
            spacing: 0.0,
            runSpacing: 8.0,
            children: [
              myGalleryImage(),
              myGalleryImage(),
              myGalleryImage(),
              myGalleryImage(),
              myGalleryImage(),
              myGalleryImage(),
              myGalleryImage(),
            ],
          )
        ],
      ),
    );
  }
}
