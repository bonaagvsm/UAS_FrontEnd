import 'dart:html';
import 'package:flutter_applicationnn/folder/Profile.dart';
import 'package:flutter_applicationnn/folder/home.dart';
import 'package:flutter_applicationnn/folder/pembayaran.dart';
import 'package:flutter_applicationnn/folder/tambahDekorasi.dart';
import 'package:flutter_applicationnn/folder/tambahFotorafer.dart';
import 'package:flutter_applicationnn/folder/tambahGedung.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter/material.dart';

class Floatings extends StatefulWidget {
  const Floatings({super.key});

  @override
  State<Floatings> createState() => _FloatingsState();
}

class _FloatingsState extends State<Floatings> {
  int _currentIndex = 0;
  bool toogle = true;
  void changeTab(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final Screen = [const Home(), const ListPembayaran(), const Profile()];
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: Screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => changeTab(index),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 20,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
          ]),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        // duration: const Duration(seconds: 1),
        // distance: 60.0,
        // type: ExpandableFabType.up,
        // fanAngle: 70,
        // child: const Icon(Icons.account_box),
        // foregroundColor: Colors.amber,
        // backgroundColor: Colors.green,
        // closeButtonStyle: const ExpandableFabCloseButtonStyle(
        //   child: Icon(Icons.abc),
        //   foregroundColor: Colors.deepOrangeAccent,
        //   backgroundColor: Colors.lightGreen,
        // ),
        // expandedFabShape: const CircleBorder(),
        // collapsedFabShape: const CircleBorder(),
        overlayStyle: ExpandableFabOverlayStyle(
          // color: Colors.black.withOpacity(0.5),
          blur: 5,
        ),
        onOpen: () {
          debugPrint('onOpen');
        },
        afterOpen: () {
          debugPrint('afterOpen');
        },
        onClose: () {
          debugPrint('onClose');
        },
        afterClose: () {
          debugPrint('afterClose');
        },
        children: [
          FloatingActionButton.small(
            // shape: const CircleBorder(),
            heroTag: null,
            child: const Icon(
              Icons.apartment,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const TambahGedung())));
            },
          ),
          FloatingActionButton.small(
            // shape: const CircleBorder(),
            heroTag: null,
            child: const Icon(
              Icons.star_border_outlined,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const TambahDekorasi())));
            },
          ),
          FloatingActionButton.small(
            // shape: const CircleBorder(),
            heroTag: null,
            child: const Icon(
              Icons.photo_camera,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const TambahFotografer())));
            },
          ),
        ],
      ),
    );
  }
}
