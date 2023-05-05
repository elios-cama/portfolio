import 'package:flutter/material.dart';

import '../widgets/ColoredCase.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.black),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 30,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: const EdgeInsets.only(top: 24, left: 16, right: 8, bottom: 24),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(48), color: Colors.grey.shade800),
                                  child: const FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      "Bienvenue sur le portfolio d'Elios Cama",
                                      style: TextStyle(color: Colors.white, fontFamily: 'Archivo'),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                child: Row(
                                  children: const [
                                    ColoredCase(
                                      color: Color(0xFFCCE2A3),
                                      number: '6+',
                                      description: "années d'expérience",
                                    ),
                                    ColoredCase(
                                      color: Color(0xFFFFC15E),
                                      number: '15+',
                                      description: "projets scolaires",
                                    ),
                                    ColoredCase(
                                      color: Color(0xFFF19C79),
                                      number: '10+',
                                      description: "projets personnels",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Flexible(
                          flex: 30,
                          child: Column(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(48), color: Colors.grey.shade700),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Row(
                                  children: [
                                    Flexible(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(48), color: Colors.yellow),
                                        )),
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Flexible(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(48), color: Colors.orange),
                                              )),
                                          Flexible(
                                              flex: 3,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(48), color: Colors.cyan),
                                              )),
                                          Flexible(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(48), color: Colors.purple),
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 30,
                          child: Container(
                            decoration:
                                BoxDecoration(borderRadius: BorderRadius.circular(48), color: Colors.grey.shade700),
                            child: const Text(
                              "Bienvenue sur le portfolio d'Elios Cama",
                              style: TextStyle(color: Colors.white, fontSize: 48),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Flexible(
                          flex: 30,
                          child: Container(
                            decoration:
                                BoxDecoration(borderRadius: BorderRadius.circular(48), color: Colors.grey.shade700),
                            child: const Text(
                              "Bienvenue sur le portfolio d'Elios Cama",
                              style: TextStyle(color: Colors.white, fontSize: 48),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ),
        ));
  }
}
