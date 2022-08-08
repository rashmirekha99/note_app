import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/styles/app_styles.dart';

Widget card(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: AppStyles.cardColors[doc["color_id"]],
              borderRadius: BorderRadius.circular(5.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doc["title"],
                style: AppStyles.mainTitle,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                doc["content"],
                style: AppStyles.contenTitle,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              // Text(doc["date"],style: AppStyles.date,),
            ],
          )));
}
