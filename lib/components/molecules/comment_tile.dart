import 'package:flutter/material.dart';

import '../atoms/button.dart';
import '../atoms/input_text.dart';

class CommentTile extends StatefulWidget {
  final void Function(String) onAddComment;

  const CommentTile({
    Key key,
    @required this.onAddComment,
  }) : super(key: key);

  @override
  _CommentTileState createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  String _comment = "";

  void _onChangeComment(String comment) {
    setState(() {
      _comment = comment;
    });
  }

  void _onConfirm() {
    widget.onAddComment(_comment);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: InputText(label: "Comentário", onChanged: _onChangeComment),
        ),
        SizedBox(width: 30),
        Button(
          onPressed: _comment.isNotEmpty ? _onConfirm : null,
          text: "Adicionar",
        ),
      ],
    );
  }
}
