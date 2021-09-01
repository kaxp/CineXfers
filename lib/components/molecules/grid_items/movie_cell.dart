import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../components/atoms/typography/header2.dart';
import '../../../components/atoms/typography/header4.dart';
import '../../../utils/app_fonts.dart';
import '../../../utils/app_images.dart';

class MovieCell extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? genre;
  final String? language;
  final String? releaseDate;

  const MovieCell(
      {Key? key,
      this.imageUrl,
      this.title,
      this.genre,
      this.language,
      this.releaseDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            child: Container(
              color: Colors.black,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: imageUrl.toString(),
                fit: BoxFit.cover,
                width: double.infinity,
                errorWidget: (context, image, _) => Image(
                    image: AssetImage(
                      AppImages.errorPlaceholder,
                    ),
                    width: double.infinity,
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 84,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Header2(
                title: title ?? '',
                fontFamily: AppFonts.ratBold,
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
              Header4(
                title: genre ?? '',
                fontStyle: FontStyle.italic,
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
              Header4(
                title: '$language • $releaseDate',
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
