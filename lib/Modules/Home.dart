import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcare/Modules/grid%20options.dart';
import 'package:medcare/Modules/widgets/custom_card.dart';

void main(){
  runApp(MaterialApp(home: MedHome(),));
}

class MedHome extends StatefulWidget {
  const MedHome({super.key});

  @override
  State<MedHome> createState() => _MedHomeState();
}

class _MedHomeState extends State<MedHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MEDCARE',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/e.png',
                width: 36.0, height: 36.0),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(),
            SizedBox(height: 30,),
            Column(
              children: [
                StaggeredGrid.count(
                  crossAxisCount: 6,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2, //width
                        mainAxisCellCount: 2, //height
                        child: Container(
                          color: Colors.blueGrey,
                          child:  Center(
                              child: IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MedOptions()));
                              }, icon: Icon(Icons.search_rounded,))),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.blueGrey,
                          child:  Center(child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  MedOptions()));
                          }, icon: Icon(Icons.search_rounded,))),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.blueGrey,
                          child:  Center(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MedOptions()));
                              }, icon: Icon(Icons.search_rounded,)),
                              Text("rfghy")
                            ],
                          )),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2, //width
                        mainAxisCellCount: 2, //height
                        child: Container(
                          color: Colors.blueGrey,
                          child:  Center(
                              child: IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  MedOptions()));
                              }, icon: Icon(Icons.search_rounded,))),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.blueGrey,
                          child:  Center(child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  MedOptions()));
                          }, icon: Icon(Icons.search_rounded,))),
                        )),
                    StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Container(
                          color: Colors.blueGrey,
                          child:  Center(child: IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  MedOptions()));
                          }, icon: Icon(Icons.search_rounded,))),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
