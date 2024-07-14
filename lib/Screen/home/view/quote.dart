import 'package:advancec1/Screen/home/model/model.dart';
import 'package:advancec1/Screen/home/provider/provider.dart';
import 'package:advancec1/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class quoteprobider extends StatelessWidget {
  const quoteprobider({super.key});

  @override
  Widget build(BuildContext context) {
    homeproviderr homepagevar =
        Provider.of<homeproviderr>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text(' qoute app'),
      ),
      body: ListView.builder(
        itemCount: homepagevar.quotelist.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(homepagevar.quotelist[index]['quote'].toString()),
            subtitle: Text(homepagevar.quotelist[index]['author'].toString()),
            trailing: InkWell(onTap: () {
              homepagevar.removeData(index);
            },child: Icon(Icons.delete,)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Alert(context);

        },
        child: Icon(CupertinoIcons.add),
      ),
    );
  }
}
Alert(context)
{

  homeproviderr homepagemethod =
  Provider.of<homeproviderr>(context, listen: false);
  showDialog(context: context, builder: (context) =>  AlertDialog(
    title: Text("Quotes Add"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: txtquote,
          decoration: InputDecoration(
              label: Text("Quotes"),
              hintText: "Quotes",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )
              )
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: txtauthor,
          decoration: InputDecoration(
              label: Text("Author"),
              hintText: "Author",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  )
              )
          ),
        ),
      ],
    ),
    actions: [
      TextButton(onPressed: () {

        homepagemethod.additiondata();
        Navigator.pop(context);
        txtquote.clear();
        txtauthor.clear();
      }, child:Text("Submit")),
      TextButton(onPressed: () {
        Navigator.of(context).pop();
      }, child: Text("Cancel")),],
  ),);
}
