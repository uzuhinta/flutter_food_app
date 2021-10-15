import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';
import 'package:fooderlich/fooderlich_theme.dart';

// class AuthorCard extends StatelessWidget {
//   const AuthorCard(
//       {Key? key,
//       required this.authorName,
//       required this.title,
//       this.imageProvider})
//       : super(key: key);

//   final String authorName;
//   final String title;
//   final ImageProvider? imageProvider;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//         children: [
//           CircleImage(
//             imageProvider: imageProvider,
//             imageRadius: 28,
//           ),
//           const SizedBox(
//             width: 8,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 authorName,
//                 style: FooderlichTheme.lightTextTheme.headline2,
//               ),
//               Text(
//                 title,
//                 style: FooderlichTheme.lightTextTheme.headline3,
//               ),
//             ],
//           ),
//           Spacer(),
//           IconButton(
//             onPressed: () {
//               const snackBar = SnackBar(content: Text('Favorite Pressed'));
//               ScaffoldMessenger.of(context).showSnackBar(snackBar);
//             },
//             icon: const Icon(Icons.favorite_border),
//             iconSize: 30,
//             color: Colors.grey[400],
//           )
//         ],
//       ),
//     );
//   }
// }

class AuthorCard extends StatefulWidget {
  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleImage(
            imageProvider: widget.imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.authorName,
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              Text(
                widget.title,
                style: FooderlichTheme.lightTextTheme.headline3,
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
              });
              const snackBar = SnackBar(content: Text('Favorite Pressed'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
          )
        ],
      ),
    );
  }
}
