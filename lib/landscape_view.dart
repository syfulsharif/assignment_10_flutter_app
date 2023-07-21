import 'package:flutter/material.dart';
import 'package:assignment10/image.dart';


class LandScapeView extends StatefulWidget {
  const LandScapeView({super.key});

  @override
  State<LandScapeView> createState() => _LandScapeViewState();
}

class _LandScapeViewState extends State<LandScapeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15.0),
          const SizedBox(
            width: 250.0,
            height: 350.0,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1552168324-d612d77725e3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=736&q=80'),
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'John Doe',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              const SizedBox(
                width: 500.0,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Jane Andrews is a visionary photographer with an unparalleled ability to encapsulate the beauty of the world through her captivating images.',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SizedBox(
                width: 500.0,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  spacing: 10.0,
                  runSpacing: 12.0,
                  children: [
                    myGalleryImage(),
                    myGalleryImage(),
                    myGalleryImage(),
                    myGalleryImage(),
                    myGalleryImage(),
                    myGalleryImage(),
                    myGalleryImage(),
                  ],
                ),
              ),

            ],
            ),
          ),
        ],
      ),
    );
  }
}