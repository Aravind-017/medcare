import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: MedOptions(),));
}
class MedOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
                        color: Colors.green,
                        child: const Center(
                            child: Icon(Icons.cabin)),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Container(
                        color: Colors.orange,
                        child: const Center(child: Icon(Icons.add)),
                      )),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Container(
                        color: Colors.red,
                        child: const Center(child: Icon(Icons.home)),
                      ))
                ],
              ),
          ],
        ),
    );
  }
}