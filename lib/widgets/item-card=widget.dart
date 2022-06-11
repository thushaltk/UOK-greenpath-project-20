import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ItemCardWidget extends StatefulWidget {
  final String routename;
  final Image image;
  final String name;
  
  const ItemCardWidget({Key? key, required this.routename, required this.image, required this.name}) : super(key: key);

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 10.0),
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: widget.image,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}