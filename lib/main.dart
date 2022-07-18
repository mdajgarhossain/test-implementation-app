import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:implementation_test_app/ui/image_picker_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   // int _counter = 0;
//   //
//   // void _incrementCounter() {
//   //   setState(() {
//   //     _counter++;
//   //   });
//   // }
//   File? image;
//
//   Future pickImage(ImageSource source) async {
//     try {
//       final image = await ImagePicker().pickImage(source: source);
//       if (image == null) return;
//
//       final imageTemporary = File(image.path);
//       setState(() => this.image = imageTemporary);
//     } on PlatformException catch (e) {
//       print('Failed to pick image: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text(widget.title),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Spacer(),
//             image != null
//                 ? Image.file(
//                     image!,
//                     width: 180,
//                     height: 180,
//                     fit: BoxFit.cover,
//                   )
//                 : const FlutterLogo(size: 160),
//
//             const SizedBox(height: 50),
//
//             // Pick from Gallery button
//             ElevatedButton.icon(
//               onPressed: () => pickImage(ImageSource.gallery),
//               icon: const Icon(Icons.image_outlined),
//               label: const Text('Pick from Gallery'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.green,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
//                 textStyle: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 24),
//
//             // Pick from Camera button
//             ElevatedButton.icon(
//               onPressed: () => pickImage(ImageSource.camera),
//               icon: const Icon(Icons.camera_alt_outlined),
//               label: const Text('Pick from Camera'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.green,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
//                 textStyle: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             const Spacer(),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
