import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:layout_practice/screens/rowstart.dart';
import 'package:layout_practice/screens/rowcenter.dart';
import 'package:layout_practice/screens/rowend.dart';
import 'package:layout_practice/screens/rowspacebetween.dart';
import 'package:layout_practice/screens/rowspacearound.dart';
import 'package:layout_practice/screens/rowtextbaseline.dart';
import 'package:layout_practice/screens/rowcrossstart.dart';
import 'package:layout_practice/screens/rowcrosscenter.dart';
import 'package:layout_practice/screens/rowcrossend.dart';
import 'package:layout_practice/screens/rowcrossstretch.dart';
import 'package:layout_practice/screens/rowmainaxissizemax.dart';
import 'package:layout_practice/screens/rowmainaxissizemin.dart';

import 'package:layout_practice/screens/columnstart.dart';
import 'package:layout_practice/screens/columncenter.dart';
import 'package:layout_practice/screens/columnend.dart';
import 'package:layout_practice/screens/columnspacebetween.dart';
import 'package:layout_practice/screens/columnspacearound.dart';

import 'package:layout_practice/screens/stack.dart';
import 'package:layout_practice/screens/stackpositioned.dart';
import 'package:layout_practice/screens/stacklayoutbuilder.dart';

import 'package:layout_practice/screens/expanded.dart';

import 'package:layout_practice/screens/card.dart';
import 'package:layout_practice/screens/constrainedbox.dart';
import 'package:layout_practice/screens/constrainedboxexpand.dart';

import 'package:layout_practice/screens/align.dart';

import 'package:layout_practice/screens/container.dart';
import 'package:layout_practice/screens/containerastransform.dart';

import 'package:layout_practice/screens/sizedbox.dart';
import 'package:layout_practice/screens/sizedboxaspadding.dart';

import 'package:layout_practice/screens/safearea.dart';

class Homescreen extends StatelessWidget {

  Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homescreen'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
          delegate: SliverChildListDelegate( [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RowStart()));
            }, child: Text('row start'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RowCenter()));
            }, child: Text('row center'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RowEnd()));
            }, child: Text('row end'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RowSpaceBetween()));
            }, child: Text('row spaceBetween'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RowSpaceAround()));
            }, child: Text('row spaceAround'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentBaseline()));
            }, child: Text('row cross alignment baseline'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentStart()));
            }, child: Text('row cross alignment start'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentCenter()));
            }, child: Text('row cross alignment center'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentEnd()));
            }, child: Text('row cross alignment end'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentStretch()));
            }, child: Text('row cross alignment stretch'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainAxisSizeMax()));
            }, child: Text('row main axis size max'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainAxisSizeMin()));
            }, child: Text('row main axis size min'),),


            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnStart()));
            }, child: Text('column start'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnCenter()));
            }, child: Text('column center'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnEnd()));
            }, child: Text('column end'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnSpaceBetween()));
            }, child: Text('column spaceBetween'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnSpaceAround()));
            }, child: Text('column spaceAround'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StackSample()));
            }, child: Text('stack'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StackPositionedSample()));
            }, child: Text('stack positioned'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StackLayoutBuilderSample()));
            }, child: Text('stack + layoutbuilder'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ExpandedSample()));
            }, child: Text('expanded'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CardSample()));
            }, child: Text('Card'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ConstrainedBoxSample()));
            }, child: Text('ConstrainedBox'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ConstrainedBoxExpandSample()));
            }, child: Text('ConstrainedBoxExpand'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AlignSample()));
            }, child: Text('Align'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerSample()));
            }, child: Text('Container'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerAsTransform()));
            }, child: Text('Container as transform'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SizedBoxSample()));
            }, child: Text('Sized box'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SizedBoxAsPadding()));
            }, child: Text('Sized box as padding'),),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SafeAreaSample()));
            }, child: Text('SafeArea'),),


          ]),
          ),

          ],
    ),
      /*body:Column(
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowStart()));
              }, child: Text('row start'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowCenter()));
              }, child: Text('row center'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowEnd()));
              }, child: Text('row end'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowSpaceBetween()));
              }, child: Text('row spaceBetween'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowSpaceAround()));
              }, child: Text('row spaceAround'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentBaseline()));
              }, child: Text('row cross alignment baseline'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentStart()));
              }, child: Text('row cross alignment start'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CrossAxisAlignmentCenter()));
              }, child: Text('row cross alignment center'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnStart()));
              }, child: Text('column start'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnCenter()));
              }, child: Text('column center'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnEnd()));
              }, child: Text('column end'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnSpaceBetween()));
              }, child: Text('column spaceBetween'),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnSpaceAround()));
              }, child: Text('column spaceAround'),),
            ],
          ),*/

    );
  }
}
