import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'package:rome/widgets/bottomnavigationbar.dart';

class ShowFiche extends StatelessWidget {
  final String ficheText;
  final String ficheTitre;

  const ShowFiche({Key? key, required this.ficheTitre, required this.ficheText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print( ficheText );
    return Scaffold(
        appBar: AppBar(
          title: Text(ficheTitre),
        ),
        bottomNavigationBar: const MyNavigationBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: <Widget>[
                Html(
                  data: ficheText,
                  style: {
                    "p": Style(
                        fontSize: const FontSize(16),
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        display: Display.BLOCK,
                        lineHeight: LineHeight(1.3)
                    ),


                    "div": Style(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        margin: EdgeInsets.all(0),
                        //textAlign:TextAlign.center,
                        //backgroundColor: Colors.grey,
                      ),
                    "img": Style(
                      padding: const EdgeInsets.fromLTRB(15, 20, 5, 20),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                    )
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
