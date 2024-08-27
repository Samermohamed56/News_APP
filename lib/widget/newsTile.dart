import 'package:flutter/material.dart';
import 'package:news/models/articlemodel.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articlemodel});
  final Articlemodel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image(
            image: articlemodel.image != null
                ? NetworkImage(articlemodel.image!)
                : const AssetImage("assets/interface-3614766_1280.png"),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          articlemodel.title,
          style: const TextStyle(fontSize: 30),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articlemodel.subtitle ?? "There is no subTitle.",
          style: const TextStyle(fontSize: 20, color: Colors.grey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
