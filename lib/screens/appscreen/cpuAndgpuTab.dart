import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'global.dart' as globals;

class cpuAndgpuTab extends StatefulWidget {
  cpuAndgpuTab({required this.image, required this.name, required this.price});
  final List image;
  final List name;
  final List price;

  @override
  State<cpuAndgpuTab> createState() => _cpuAndgpuTabState();
}

class _cpuAndgpuTabState extends State<cpuAndgpuTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.name.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          isThreeLine: true,
          leading: Image(
            image: NetworkImage("${widget.image[index]}"),
            width: 70,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
          title: Text("${widget.name[index]}"),
          subtitle: Text("${widget.price[index]}"),
          trailing: IconButton(
            icon: Icon(
              Ionicons.add,
              color: Colors.black,
            ),
            onPressed: () {
              globals.c1++;
              print(globals.c1);
            },
          ),
        );
      },
    );
  }
}
