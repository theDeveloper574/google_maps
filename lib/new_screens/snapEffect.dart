//
//
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:scroll_snap_list/scroll_snap_list.dart';
//
// class SnapEffect extends StatefulWidget {
//
//   @override
//   _SnapEffectState createState() => _SnapEffectState();
// }
//
// class _SnapEffectState extends State<SnapEffect> {
//   List<int> data = [1,2,3,4,5,6,7,8,9,10];
//   Widget _buildItemList (BuildContext context, int index){
//     if(index== data.length)
//       return Center(child: CircularProgressIndicator());
//     return Container(
//       width: 150,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//         Container(
//           color: Colors.green,
//           height: 90,
//           width: 90,
//           child: Center(
//             child: Text("${data[index]}", style: TextStyle(
//               fontSize: 40
//             ),),
//           ),
//         )
//       ],),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("center"),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Container(
//               height: 300,
//               child: Row(
//                 children: [
//                   Expanded(child: ScrollSnapList(
//                     reverse: false,
//                     itemBuilder: _buildItemList,
//                     onItemFocus: (int ) {  },
//                     itemCount: data.length,
//                     itemSize: 150,
//                     dynamicItemSize: true,
//                     onReachEnd: (){
//                       print("hell");
//                     },
//                   )),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
