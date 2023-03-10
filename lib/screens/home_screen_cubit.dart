 
import 'package:bloc_practice/cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 

class HomeScreenCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state == InternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Internet Connected"),
                  backgroundColor: Colors.green,
                ),
              );
            } else if (state == InternetState.Lost) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Internet not Connected"),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state == InternetState.Gained) {
              return Text("Connected");
            } else if (state == InternetState.Lost) {
              return Text("disconnected");
            } else {
              return Text("Loading");
            }
          },
        )
            // child: BlocBuilder<InternetBloc, InternetState>(
            //   builder: (context, state) {
            //     /// if(state ==)
            //     /// ==  used to check value
            //     /// 'is' to check datatype
            //     ///
            //     if (state is InternetGainedState) {
            //       return Text("Connected");
            //     } else if (state is InternetLostState) {
            //       return Text("disconnected");
            //     } else {
            //       return Text("Loading");
            //     }
            //   },
            // ),
            ),
      ),
    );
  }
}
