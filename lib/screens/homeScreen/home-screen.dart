import 'package:flutter/material.dart';
import 'package:we_chat/them/colors.dart';
import 'package:we_chat/widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: const Icon(Icons.add));
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: CustomAppbar(),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: CircleAvatar(),
                            title: Text(
                              "name ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text("email@gmail.com",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                          ));
                    }))
          ],
        ),
      ),
    );
  }
}
