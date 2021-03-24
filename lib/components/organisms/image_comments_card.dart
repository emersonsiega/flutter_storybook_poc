import 'package:flutter/material.dart';
import 'package:flutter_storybook_poc/components/atoms/styled_title.dart';
import 'package:flutter_storybook_poc/components/molecules/comment_tile.dart';
import 'package:flutter_storybook_poc/components/molecules/asset_image_card.dart';

class ImageCommentsCard extends StatefulWidget {
  final String title;
  final String image;

  const ImageCommentsCard({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  @override
  _ImageCommentsCardState createState() => _ImageCommentsCardState();
}

class _ImageCommentsCardState extends State<ImageCommentsCard> {
  List<String> _comments = [];

  void _onAddComment(String comment) {
    setState(() {
      _comments.add(comment);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AssetImageCard(title: widget.title, image: widget.image),
        SizedBox(height: 10),
        CommentTile(onAddComment: _onAddComment),
        SizedBox(height: 30),
        StyledTitle(text: "Comments"),
        if (_comments.isEmpty)
          Text("No comments.", textAlign: TextAlign.center),
        if (_comments.isNotEmpty)
          ..._comments.reversed.map(
            (comment) => Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(comment),
            ),
          ),
      ],
    );
  }
}
