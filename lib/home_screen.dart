import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PIPView(builder: (context, isFloating) {
      return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: isFloating,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                    child: Text(
                  'This is the PIP Window',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () {
                    PIPView.of(context)!.presentBelow(BackgroundScreen());
                  },
                  child: Text(
                    "Start Floating",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        )),
      );
    });
  }
}

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: Text("This is background  page")),
      )),
    );
  }
}
