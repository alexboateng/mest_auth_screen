import 'package:flutter/material.dart';

class BackgroundFullImage extends StatelessWidget {
  const BackgroundFullImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Image.network(
        "https://images.unsplash.com/photo-1536147210925-5cb7a7a4f9fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3JlZW4lMjBwbGFudHxlbnwwfHwwfHw%3D&w=1000&q=80",
        fit: BoxFit.cover,
      ),
    );
  }
}
