import 'package:flutter/material.dart';

class FeaturedCommentatorsWidget extends StatelessWidget {
  final List<Map<String, String>> commentators;

  const FeaturedCommentatorsWidget({Key? key, required this.commentators}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade600, width: 0.5),
    ),
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Bình luận viên nổi bật",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 cột
              crossAxisSpacing: 8,
              mainAxisSpacing: 16,
              childAspectRatio: 0.8,
            ),
            itemCount: commentators.length,
            itemBuilder: (context, index) {
              final commentator = commentators[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.orange, width: 2),
                    ),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(commentator["image"]!),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    commentator["name"]!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "${commentator["followers"]} Follower",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
