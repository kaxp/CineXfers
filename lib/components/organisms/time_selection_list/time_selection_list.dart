import 'package:flutter/material.dart';

import '../../../models/movies.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_fonts.dart';

class TimeSelectionList extends StatelessWidget {
  final Result? data;
  final Function(int, int)? onButtonTapped;
  final int? childListIndex, parentListIndex;

  //childList is the list containing all the timings for each genre.
  // parentList is the list of genres in which childList lies.

  const TimeSelectionList(
      {Key? key,
      this.data,
      this.onButtonTapped,
      this.childListIndex,
      this.parentListIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: data!.showTimings!.length,
          itemBuilder: (BuildContext context, int parentIndex) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text("${data!.showTimings![parentIndex].experience}",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontFamily: AppFonts.ratRegular)),
                ),
                Flexible(
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: data!.showTimings![parentIndex].times!.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 16 / 12, crossAxisCount: 4),
                      itemBuilder: (context, childIndex) {
                        return GestureDetector(
                          onTap: () => onButtonTapped!(childIndex, parentIndex),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: (childListIndex == childIndex &&
                                          parentListIndex == parentIndex)
                                      ? AppColors.redColor
                                      : Colors.white,
                                  border: Border.all(
                                      color: (childListIndex == childIndex &&
                                              parentListIndex == parentIndex)
                                          ? AppColors.redColor
                                          : Colors.black26)),
                              child: Center(
                                child: Text(
                                  "${data!.showTimings![parentIndex].times![childIndex]}",
                                  style: TextStyle(
                                      fontFamily: AppFonts.ratMedium,
                                      color: (childListIndex == childIndex &&
                                              parentListIndex == parentIndex)
                                          ? Colors.white
                                          : Colors.black54),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            );
          }),
    );
  }
}
