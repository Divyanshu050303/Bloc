import 'package:flutter/material.dart';

class Animatercards extends StatefulWidget {
  const Animatercards({super.key});

  @override
  State<Animatercards> createState() => _AnimatercardsState();
}

class _AnimatercardsState extends State<Animatercards> {
  int selectedItemIndex = 0;
  double containerHeight = 20;

  @override
  Widget build(BuildContext context) {
    const double listContainerBorderWidth = 1.5;
    const int itemsCount = 8;
    double itemHeight = (800 - listContainerBorderWidth * 2) / itemsCount;

    return Scaffold(
        backgroundColor: Colors.cyan.shade100,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              AnimatedPositioned(
                top: selectedItemIndex * itemHeight,
                left: 0,
                right: 0,
                height: itemHeight,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    8,
                    (i) => Expanded(
                      child: InkWell(
                        onTap: () => setState(() => selectedItemIndex = i),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'List Item ${i + 1}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                if (i == 3)
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeInOut,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: selectedItemIndex == i
                                          ? Colors.yellow
                                          : Colors.pink,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: selectedItemIndex == i
                                            ? Colors.white
                                            : Colors.transparent,
                                        width: 2,
                                      ),
                                    ),
                                    child: AnimatedDefaultTextStyle(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: selectedItemIndex == i
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                      child: const Text('Featured!'),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
