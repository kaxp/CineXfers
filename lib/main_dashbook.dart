import 'package:dashbook/dashbook.dart';
import 'package:flutter/material.dart';

import 'components/atoms/buttons/default_elevated_button.dart';
import 'components/atoms/typography/header1.dart';
import 'components/atoms/typography/header2.dart';
import 'components/atoms/typography/header4.dart';
import 'components/atoms/typography/header6.dart';
import 'components/molecules/app_bar/cine_appBar.dart';
import 'components/molecules/grid_items/movie_cell.dart';
import 'utils/app_colors.dart';
import 'utils/app_theme.dart';

void main() {
  final dashbook = Dashbook(
    theme: AppTheme.defaultTheme,
  );

  // Typography
  dashbook
      .storiesOf('[A] Typography')
      .decorator(CenterDecorator())
      .add(
          'Header 1',
          (context) => const Header1(
                title: 'Header One',
              ))
      .add(
          'Header 2',
          (context) => const Header2(
                title: 'Header Two',
              ))
      .add('Header 4', (context) => const Header4(title: 'Header Four'))
      .add('Header 6', (context) => const Header6(title: 'Header Six'));

  dashbook.storiesOf('[O] Cells').decorator(CenterDecorator()).add(
      'Movie Cell',
      (context) => MovieCell(
            genre: "Action/Fiction",
            language: "French",
            releaseDate: "22 June,2018",
            title: 'Test Widget',
            imageUrl:
                'https://image.tmdb.org/t/p/w500/6Bbq8qQWpoApLZYWFFAuZ1r2gFw.jpg',
          ));

// Text
  dashbook
      .storiesOf('Text')
      .decorator(CenterDecorator())
      .add('default', (context) {
        return Container(
          width: 300,
          padding: context.edgeInsetsProperty(
            "edge Insets",
            const EdgeInsets.fromLTRB(1, 2, 3, 4),
          ),
          child: Text(
            context.textProperty("text", "Text Example"),
            textAlign: context.listProperty(
              "text align",
              TextAlign.center,
              TextAlign.values,
            ),
            textDirection: context.listProperty(
              "text direction",
              TextDirection.rtl,
              TextDirection.values,
            ),
            style: TextStyle(
              fontWeight: context.listProperty(
                "font weight",
                FontWeight.normal,
                FontWeight.values,
              ),
              fontStyle: context.listProperty(
                "font style",
                FontStyle.normal,
                FontStyle.values,
              ),
              fontSize: context.numberProperty("font size", 20),
              color: context.colorProperty(
                "color",
                Colors.red,
              ),
            ),
          ),
        );
      })
      .add(
        'bold',
        (_) => const Text(
          "Text",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      )
      .add(
        'color text',
        (_) => const Text(
          "Text",
          style: TextStyle(
            color: Color(0xFF0000FF),
          ),
        ),
      );

  // RaisedButton
  dashbook.storiesOf('ElevatedButton').decorator(CenterDecorator()).add(
        'DefaultElevatedButton',
        (context) => DefaultElevatedButton(
          onPressed: () {},
          primaryColor: context.colorProperty(
            "color",
            AppColors.redColor,
          ),
          title:
              context.listProperty("Label", "Ok", ["Ok", "Cancel", "Book Now"]),
        ),
      );

  // Border radius
  dashbook.storiesOf('Border radius').decorator(CenterDecorator()).add(
        'default',
        (context) => Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: context.borderRadiusProperty(
                  "border radius",
                  const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)))),
          child: const Text(
            "Text",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );

  // AppBar
  dashbook.storiesOf('AppBar').add(
      'CineAppBar',
      (context) => Scaffold(
              appBar: CineAppBar(
                  actionWidgets: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                )
              ],
                  titleWidget: Text(
                    context.listProperty(
                        "Title", "AppBar", ["AppBar", "Welcome", "Hello"]),
                    style: TextStyle(
                      fontSize: context.numberProperty("font size", 20),
                    ),
                  ),
                  isCenter: context.boolProperty('isCenter', true))));

  runApp(dashbook);
}
