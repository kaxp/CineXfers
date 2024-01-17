import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../models/movies.dart';
import '../../../utils/app_fonts.dart';
import '../../../utils/app_images.dart';
import '../../../utils/size_config.dart';

class DetailPageHeader extends StatelessWidget {
  final String? imageUrl;
  final Function? onTrailerTap;
  final Function? onLocationTap;
  final Function? onCalendarTap;
  final Result? data;

  const DetailPageHeader(
      {Key? key, this.imageUrl, this.onTrailerTap, this.onLocationTap, this.onCalendarTap, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight! * 0.5,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          CachedNetworkImage(
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
          Positioned.fill(child: Container(decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)))),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Container(
              height: 60.0,
              width: double.infinity,
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () => onCalendarTap!(),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.calendar_today),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            S.current.today,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black54,
                    ),
                    InkWell(
                      onTap: () => onLocationTap!(),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            S.current.location,
                            maxLines: 1,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Container(
                height: 34,
                width: 96,
                child: ElevatedButton(
                  onPressed: () => onTrailerTap!(),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white.withOpacity(0.6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow, color: Colors.black54),
                      Text(S.current.trailer,
                          style: TextStyle(color: Colors.black54, fontFamily: AppFonts.ratMedium, fontSize: 13))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildFooterDetailsWidget(data!),
          )
        ],
      ),
    );
  }

  List<Widget> topExperienceList(List<String> movieL) {
    final List<Widget> list = [];
    for (int i = 0; i < movieL.length; i++) {
      list.add(
        new Card(
            margin: EdgeInsets.only(right: 4),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)), side: BorderSide()),
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Text(
                movieL[i],
                style: new TextStyle(color: Colors.black, fontFamily: AppFonts.ratMedium, fontSize: 10),
              ),
            )),
      );
    }
    return list;
  }

  Widget _buildFooterDetailsWidget(Result movieL) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            movieL.title!.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontFamily: AppFonts.ratBold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(height: 8),
          Wrap(
            children: [
              Text(
                movieL.duration ?? " ",
                style: TextStyle(color: Colors.white, fontFamily: AppFonts.ratMedium, fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6, right: 6, top: 2),
                child: Text('•', style: TextStyle(color: Colors.white, fontFamily: AppFonts.ratMedium)),
              ),
              Text(
                movieL.genre ?? " ",
                style: TextStyle(color: Colors.white, fontFamily: AppFonts.ratMedium, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
              Padding(
                padding: EdgeInsets.only(left: 6, right: 6, top: 2),
                child: Text('•', style: TextStyle(color: Colors.white, fontFamily: AppFonts.ratMedium)),
              ),
              Text(
                movieL.releaseDate ?? " ",
                style: TextStyle(color: Colors.white, fontFamily: AppFonts.ratMedium, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Wrap(
            children: topExperienceList(movieL.experienceList!.toList()),
          )
        ],
      ),
    );
  }
}
