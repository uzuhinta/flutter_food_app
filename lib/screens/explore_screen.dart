import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';
import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/models/models.dart';

class ExploreScreen extends StatelessWidget {
  // 1
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 2
    // TODO 1: Add TodayRecipeListView FutureBuilder
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snaps) {
        if (snaps.connectionState == ConnectionState.done) {
          // print("snap: ${snaps}");
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(
                recipes: snaps.data?.todayRecipes ?? [],
              ),
              const SizedBox(
                height: 16,
              ),
              FriendsPostListView(friendPosts: snaps.data?.friendPosts ?? []),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: mockService.getExploreData(),
//       builder: (context, AsyncSnapshot<ExploreData> snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return ListView(
//             scrollDirection: Axis.vertical,
//             children: [
//               TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
//               const SizedBox(height: 16),
//               FriendPostListView(
//                 friendPosts: snapshot.data?.friendPosts ?? [],
//               )
//             ],
//           );
//         } else {
//           return const Center(child: CircularProgressIndicator());
//         }
//       },
//     );
//   }
// }