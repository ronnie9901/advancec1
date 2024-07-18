import 'package:advancec1/Screen/home/provider/authi.provider.dart';
import 'package:advancec1/utils/authiglobal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    FingerProvider fingerProvider = Provider.of<FingerProvider>(context,listen:  false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gallery',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, size: width * 0.08),
            itemBuilder: (context) =>
            [
              PopupMenuItem<int>(
                value: 0,
                child: Text('Hide Folders',
                    style: TextStyle(fontSize: width * 0.042)),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('Setting',
                    style: TextStyle(fontSize: width * 0.042)),
              ),
            ],
            onSelected: (item) async {
              if (item == 0) {
                fingerProvider.localUser(context);
              }
            },
          ),
        ],
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,crossAxisSpacing: 8,mainAxisExtent: 175),
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 110,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(hideimg[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('${Imagename[index]}', style: const TextStyle(fontWeight: FontWeight
                .bold,fontSize: 16),),
            Text('${ImageQty[index]}', style: const TextStyle(fontWeight: FontWeight
                .w200, fontSize: 13,height: 0.9),),
          ],
        ),
      ),
    );
  }
}

List<PopupMenuItem> popMenu = [
  PopupMenuItem(
    value: 0,
    child: Text('Hide Images'),
  ),
  PopupMenuItem(
    value: 1,
    child: Text('Settings'),
  ),
];