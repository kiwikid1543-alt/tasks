import 'package:flutter/material.dart';

/// #### appBar
///     - title
///         - Text
///
///
///     #### body
///     - Column
///         - ContainerBox
///             - Column
///                 - Image
///                 - Text
///                 - Text
///         - Icon
///
///
///     #### bottom

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "동준`s Tasks",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [Container()]),
    );
  }
}
