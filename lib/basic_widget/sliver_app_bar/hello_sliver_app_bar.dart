import 'package:flutter/material.dart';

class HelloSliverAppBar extends StatelessWidget {
  const HelloSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014_1280.jpg',
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: const Text('SliverAppBar'),
              // collapseMode: CollapseMode.pin,
              expandedTitleScale: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  'SLIVER',
                  style: TextStyle(fontSize: 600),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
