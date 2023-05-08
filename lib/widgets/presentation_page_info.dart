import 'package:flutter/material.dart';
import 'icon_circle.dart';
import 'icon_circle_full.dart';

class HomePageInfo extends StatelessWidget {
  const HomePageInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          flex: 1,
          child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                color: const Color(0xFF1E1B1E),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Elios",
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 22),
                  ),
                  const Text(
                    " Cama",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              )),
        ),
        const SizedBox(
          height: 8,
        ),
        Flexible(
          flex: 6,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    color: const Color(0xFF1E1B1E),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/elios.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: const Color(0xFF1E1B1E),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "School:",
                              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                            ),
                            const Text(
                              "UTBM",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: const Color(0xFF1E1B1E),
                        ),
                        child: Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Basé à:",
                                    style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                                  ),
                                  const Text(
                                    "Belfort",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Flexible(
                              flex: 5,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/map.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: const Color(0xFF1E1B1E),
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
                          IconCircleFull(
                            path: 'linkedin',
                          ),
                          IconCircleFull(
                            path: 'github',
                          ),
                          IconCircle(
                            path: 'stackoverflow',
                          ),
                          IconCircle(
                            path: 'gmail',
                          ),
                        ],),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}


