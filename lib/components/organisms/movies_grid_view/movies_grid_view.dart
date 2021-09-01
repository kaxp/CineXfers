import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../components/molecules/grid_items/movie_cell.dart';
import '../../../models/movies.dart';
import '../../../utils/functions.dart';
import '../../../utils/size_config.dart';

class MoviesGridView extends StatelessWidget {
  final PagingController<int, Result> pagingController;
  final List<Result>? movies;
  final Function(int)? onCellTapped;

  const MoviesGridView(
      {Key? key,
      required this.pagingController,
      this.movies,
      this.onCellTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedGridView<int, Result>(
      shrinkWrap: true,
      showNewPageProgressIndicatorAsGridChild: false,
      showNewPageErrorIndicatorAsGridChild: false,
      showNoMoreItemsIndicatorAsGridChild: false,
      physics: BouncingScrollPhysics(),
      pagingController: pagingController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: Functions.getGridAspectRatio(
            SizeConfig.devicePixelRatio!.toDouble()),
        crossAxisSpacing: 8,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      padding: const EdgeInsets.only(top: 16),
      builderDelegate: PagedChildBuilderDelegate<Result>(
        animateTransitions: true,
        itemBuilder: (context, item, index) {
          return Card(
              margin: index % 2 == 0
                  ? EdgeInsets.fromLTRB(16.0, 0, 4, 8)
                  : EdgeInsets.fromLTRB(4, 0, 16, 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => onCellTapped!.call(index),
                child: MovieCell(
                  imageUrl: movies![index].posterPath,
                  genre: movies![index].genre,
                  language:
                      movies![index].originalLanguage.toString().toUpperCase(),
                  releaseDate: movies![index].releaseDate,
                  title: movies![index].title!.toUpperCase(),
                ),
              ));
        },
      ),
    );
  }
}
