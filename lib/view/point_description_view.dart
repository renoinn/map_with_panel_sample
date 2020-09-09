import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PointDescriptionView extends StatelessWidget {
  const PointDescriptionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => Navigator.pop(context),
//        onPanUpdate: (dragUpdateDetails) => Navigator.pop(context),
        onHorizontalDragUpdate: (dragUpdateDetails) => Navigator.pop(context),
        onVerticalDragUpdate: (dragUpdateDetails) => Navigator.pop(context),
        child: SafeArea(
          child: Stack(
            children: const <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: _SlideWidget(
                  initialOffset: Offset(0, -1),
                  child: _SearchBar(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _SlideWidget(
                  initialOffset: Offset(0, 1),
                  child: _ContentView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(minWidth: size.width - 32.0, minHeight: 96.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [BoxShadow(color: Colors.grey[400], blurRadius: 3.0, spreadRadius: 0.0)],
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('Test contents text.', style: TextStyle(color: Colors.grey), overflow: TextOverflow.clip),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        constraints: BoxConstraints(maxWidth: size.width - 32.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [BoxShadow(color: Colors.grey[400], blurRadius: 3.0, spreadRadius: 0.0)],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.search, color: Theme.of(context).primaryColor),
              const SizedBox(width: 8.0),
              const Expanded(
                child: Text('検索', style: TextStyle(color: Colors.grey), overflow: TextOverflow.clip),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SlideWidget extends StatelessWidget {
  const _SlideWidget({
    Key key,
    this.child,
    this.initialOffset,
  }) : super(key: key);

  final Widget child;
  final Offset initialOffset;

  @override
  Widget build(BuildContext context) {
    var animation = Provider.of<Animation<double>>(context, listen: false);
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: initialOffset,
            end: const Offset(0, 0),
          ).animate(CurvedAnimation(curve: Curves.easeInOut, parent: animation)),
          child: child,
        );
      },
      child: child,
    );
  }
}
