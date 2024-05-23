import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:test_app/home/ListView.dart';

class ListCardView extends StatefulWidget {
  ListCardView({required this.data, super.key});
  final Map<String, dynamic> data;

  @override
  State<ListCardView> createState() => _ListCardViewState();
}

class _ListCardViewState extends State<ListCardView> {
  bool test1 = false;

  @override
  Widget build(BuildContext context) {
    debugPrint(widget.data.toString());
    return InkWell(
      onTap: () {
        setState(() {
          test1 = !test1;
        });
        debugPrint("${widget.data["name"]} $test1");
      },
      child: Card(
        shape: const RoundedRectangleBorder(side: BorderSide()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Text(''),
                  ),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.data["name"]}"),
                    Text("${widget.data["Introduction"]}")
                  ],
                ),
                trailing: test1
                    ? const Icon(Icons.horizontal_rule)
                    : const Icon(Icons.add),
              ),
              if (test1)
                Column(
                  children: [
                    const Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 10,
                        endIndent: 10),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.data["class"].length,
                        itemBuilder: (context, index) {
                          final className = widget.data["class"][index];
                          return SizedBox(
                            height: 60,
                            child: ListTile(
                              leading: const Icon(Icons.calendar_month),
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${className["className"]}"),
                                  Text("${className["time"]}")
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
