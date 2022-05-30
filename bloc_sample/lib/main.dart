// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_sample/feature/feed_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) => ProviderScope(
//         child: MaterialApp(
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//
//           ),
//           home: MainScreen(),
//         ),
//       );
// }
//
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return OrientationBuilder(
//       child: Center(
//         child: Text(
//           // ali
//         ),
//       ),
//     );
//   }
// }
//
//
// // class MainScreen extends StatelessWidget {
// //   const MainScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) => Scaffold(
// //         body: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               ElevatedButton(
// //                 onPressed: () => Navigator.of(context).push<void>(
// //                   MaterialPageRoute(builder: (context) => const RiverpodSample()),
// //                 ),
// //                 child: const Text('Riverpod sample'),
// //               ),
// //               const SizedBox(height: 12),
// //               ElevatedButton(
// //                 onPressed: () => Navigator.of(context).push<void>(
// //                   MaterialPageRoute(builder: (context) => const RiverpodSample()),
// //                 ),
// //                 child: const Text('Bloc sample'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       );
// // }
