import 'package:CupcakerChallenge/components/molecules/all.dart';
import 'package:CupcakerChallenge/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Watchlist', textAlign: TextAlign.center)),
        backgroundColor: kBlue,
      ),
      body: Center(
        child: EmptyState(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      child: const Icon(Icons.add, color: Colors.white,),
    )
    );
  }
}
