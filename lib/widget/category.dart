import 'package:flutter/material.dart';
import 'package:news/models/info.dart';
import 'package:news/screen/categoryview.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key,
    required this.info,
  });
  final Info info;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Categoryview(category : info.Name);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Container(
          height: 150,
          width: 220,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(info.image))),
          child: Center(
              child: Text(
            info.Name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
