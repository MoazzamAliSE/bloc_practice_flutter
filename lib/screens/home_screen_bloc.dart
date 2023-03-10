// import 'package:bloc_practice/blocs/internetbloc/internet_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../blocs/internetbloc/internet_bloc.dart';

// class HomeScreenBloc extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//             child: BlocConsumer<InternetBloc, InternetState>(
//           listener: (context, state) {
//             if (state is InternetGainedState) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text("Internet Connected"),
//                   backgroundColor: Colors.green,
//                 ),
//               );
//             } else if (state is InternetLostState) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(
//                   content: Text("Internet not Connected"),
//                   backgroundColor: Colors.red,
//                 ),
//               );
//             }
//           },
//           builder: (context, state) {
//             if (state is InternetGainedState) {
//               return Text("Connected");
//             } else if (state is InternetLostState) {
//               return Text("disconnected");
//             } else {
//               return Text("Loading");
//             }
//           },
//         )
//             // child: BlocBuilder<InternetBloc, InternetState>(
//             //   builder: (context, state) {
//             //     /// if(state ==)
//             //     /// ==  used to check value
//             //     /// 'is' to check datatype
//             //     ///
//             //     if (state is InternetGainedState) {
//             //       return Text("Connected");
//             //     } else if (state is InternetLostState) {
//             //       return Text("disconnected");
//             //     } else {
//             //       return Text("Loading");
//             //     }
//             //   },
//             // ),
//             ),
//       ),
//     );
//   }
// }
