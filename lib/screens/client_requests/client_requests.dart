// import 'package:flutter/material.dart';
// import 'package:waseet_com_app/const.dart';
// import 'package:waseet_com_app/screens/client_requests/model/models_acd.dart';
// import 'package:waseet_com_app/screens/client_requests/widget/tabsbutton.dart';
// import 'package:waseet_com_app/screens/widgets/appbarwidgte.dart';

// class ClientRequests extends StatefulWidget {
//   ClientRequests({Key? key, this.typeAcdShow}) : super(key: key);

//   int? typeAcdShow;

//   @override
//   _ClientRequestsState createState() => _ClientRequestsState();
// }

// class _ClientRequestsState extends State<ClientRequests> {
//   final double hiegthImg = 200;
//   final double hiegthBox = 60;
//   late String titles;

//   List<ModelAcd> items = [
//     ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'تحت الانتظار', 1),
//     ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'مكتمل', 0),
//     ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'قيدالتنفيذ', 2),
//     ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'تحت الانتظار', 1),
//     ModelAcd(' تصميم 15 صفحه خاصة بالبيتزا ', 'قيدالتنفيذ', 2),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     widget.typeAcdShow = 0;
//     titles = 'جميع العقود';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context, 'طلباتي', true),
//       body: Directionality(
//         textDirection: TextDirection.rtl,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               alignment: Alignment.center,
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: hiegthImg,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/image/tal.jpg'),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 160,
//                   child: Row(
//                     children: [
//                       TabsButton(
//                         hiegthBox: hiegthBox,
//                         title: 'تحت الانتضار',
//                         subTitle: '3 عقود',
//                         colors: Colors.blue,
//                         onClick: () {},
//                       ),
//                       const SizedBox(
//                         width: iMarginCard - 10,
//                       ),
//                       TabsButton(
//                         hiegthBox: hiegthBox,
//                         title: 'قيد التنفيذ',
//                         subTitle: '3 عقود',
//                         colors: Colors.orange,
//                         onClick: () {},
//                       ),
//                       const SizedBox(
//                         width: iMarginCard - 10,
//                       ),
//                       TabsButton(
//                         hiegthBox: hiegthBox,
//                         title: 'المكتمله',
//                         subTitle: '3 عقود',
//                         colors: Colors.green,
//                         onClick: () {},
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 40,
//             ),

//             ///=================================

//             Padding(
//               padding: const EdgeInsets.only(right: iMarginCard),
//               child: Text(
//                 titles,
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//             ),
//             Expanded(
//                 child: ListView.builder(
//               itemCount: items.length,
//               scrollDirection: Axis.vertical,
//               padding: const EdgeInsets.all(iPaddingAllScreen),
//               itemBuilder: (context, index) {
//                 final itemsAcd = items[index];
//                 return DataList(item: itemsAcd, type: widget.typeAcdShow);
//               },
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DataList extends StatelessWidget {
//   DataList({
//     Key? key,
//     required this.item,
//     this.type,
//   }) : super(key: key);
//   ModelAcd item;
//   int? type;
//   @override
//   Widget build(BuildContext context) {
//     if (type == 0) {
//       final add = item != 0;
//     } else if (type == 1) {}
//     return Column(
//       children: [
//         GestureDetector(
//           child: Container(
//             width: double.infinity,
//             height: 120,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(5),
//                 bottomLeft: Radius.circular(5),
//               ),
//               border: Border.all(width: 1, color: Colors.black12),
//             ),
//             child: Container(
//               decoration: const BoxDecoration(
//                 border: Border(
//                   right: BorderSide(
//                     color: Colors.green,
//                     width: 5,
//                   ),
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   ListTile(
//                     contentPadding:
//                         const EdgeInsets.symmetric(horizontal: iMarginCard - 5),
//                     title: Text(
//                       'تصميم 15 صفحه خاصه بالبيتزا',
//                       style: Theme.of(context).textTheme.bodyText1,
//                     ),
//                     subtitle: Text(
//                       'قيد التنفيذ',
//                       style: Theme.of(context).textTheme.bodyText2,
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: iMarginCard - 5),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           alignment: Alignment.centerLeft,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Icon(
//                                 Icons.access_alarm,
//                                 size: iIconsSize,
//                               ),
//                               const SizedBox(
//                                 width: iMarginCard - 15,
//                               ),
//                               Text(
//                                 '12345678',
//                                 style: Theme.of(context).textTheme.bodyText2,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.centerLeft,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Icon(
//                                 Icons.access_alarm,
//                                 size: iIconsSize,
//                               ),
//                               const SizedBox(
//                                 width: iMarginCard - 15,
//                               ),
//                               Text(
//                                 '25034 ر.س',
//                                 style: Theme.of(context).textTheme.bodyText2,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.center,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               const Icon(
//                                 Icons.date_range_outlined,
//                                 size: 20,
//                               ),
//                               const SizedBox(
//                                 width: iMarginCard - 15,
//                               ),
//                               Text(
//                                 '21 يوم',
//                                 style: Theme.of(context).textTheme.bodyText2,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//       ],
//     );
//   }
// }

// // class TabsBoxWidget extends StatelessWidget {
// //   const TabsBoxWidget({
// //     Key? key,
// //     required this.hiegthImg,
// //     required this.hiegthBox,
// //   }) : super(key: key);

// //   final double hiegthImg;
// //   final double hiegthBox;

// //   @override
// //   Widget build(BuildContext context) {
// //     return
// //   }
// // }
