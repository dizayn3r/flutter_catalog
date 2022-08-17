import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipCardDemo extends StatefulWidget {
  const FlipCardDemo({Key? key}) : super(key: key);

  @override
  State<FlipCardDemo> createState() => _FlipCardDemoState();
}

class _FlipCardDemoState extends State<FlipCardDemo> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flip Card Package'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Without key'),
            const SizedBox(height: 8.0),
            FlipCard(
              front: Card(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  alignment: Alignment.center,
                  child: const Text('Front'),
                ),
              ),
              back: Card(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  alignment: Alignment.center,
                  child: const Text('Back'),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('With key'),
            const SizedBox(height: 8.0),
            FlipCard(
              key: cardKey,
              flipOnTouch: false,
              front: GestureDetector(
                onTap: () => cardKey.currentState!.toggleCard(),
                child: Card(
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    alignment: Alignment.center,
                    child: const Text('Front'),
                  ),
                ),
              ),
              back: Card(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  alignment: Alignment.center,
                  child: const Text('Back'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
