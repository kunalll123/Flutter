import 'package:flutter/material.dart';
import 'shop_page.dart';

// class AddCart extends StatefulWidget {
//   const AddCart({super.key});
//   @override
//   State createState() => _AddCart();
// }

// class _AddCart extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 40, 30, 57),
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(56.0), // Height of the AppBar
//         child: AppBar(
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 247, 233, 233),
//                   Color.fromARGB(255, 0, 0, 0)
//                 ], // Your gradient colors
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//               color: Color.fromARGB(255, 40, 30, 57),
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           height: 200,
//           width: 400,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: Colors.white,
//               width: 1.0,
//               style: BorderStyle.solid,
//             ),
//             borderRadius: const BorderRadius.all(
//               Radius.circular(20.0),
//             ),
//           ),
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.white,
//                       width: 0.5,
//                       style: BorderStyle.solid,
//                     ),
//                   ),
//                   child: Image.asset('assets/all assets/leatherball.webp'),
//                 ),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               const Expanded(
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 10, top: 50),
//                       child: Text(
//                         "GRASSHOPPERS clubman Cricket Lather Ball",
//                         style: TextStyle(fontSize: 15, color: Colors.white),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(right: 200),
//                       child: Text(
//                         "₹810",
//                         style: TextStyle(fontSize: 15, color: Colors.white),
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 10),
//                           child: Text(
//                             "QTY:1",
//                             style: TextStyle(fontSize: 15, color: Colors.white),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Text(
//                           "Remove",
//                           style: TextStyle(fontSize: 15, color: Colors.red),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class AddCart extends StatelessWidget {
  const AddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 19, 19, 19),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      product.imagePath,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          product.price,
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      child: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
