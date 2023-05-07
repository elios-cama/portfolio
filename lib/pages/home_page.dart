import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                                    borderRadius: BorderRadius.circular(48),
                                    color: const Color(0xFF1E1B1E),
                                  ),
                                  child: const Text(
                                    "Bienvenue sur le portfolio d'Elios Cama",
                                    style: TextStyle(color: Colors.white, fontFamily: 'Archivo', fontSize: 48),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 3,
                                child: Row(
                                  children: const [
                                    ColoredCase(
                                      color: Color(0xFF00C39A),
                                      number: '6+',
                                      description: "années d'expérience",
                                    ),
                                    ColoredCase(
                                      color: Color(0xFFFFC03C),
                                      number: '15+',
                                      description: "projets scolaires",
                                    ),
                                    ColoredCase(
                                      color: Color(0xFFFE6D79),
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
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  ClipRRect(
                                                    child: SvgPicture.asset(
                                                      "assets/svg/linkedin.svg",
                                                      height: 36,
                                                      width: 36,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey.shade900, shape: BoxShape.circle),
                                                    child: Center(
                                                      child: SvgPicture.asset(
                                                        "assets/svg/github.svg",
                                                        height: 32,
                                                        width: 32,
                                                        colorFilter: const ColorFilter.mode(
                                                          Colors.white,
                                                          BlendMode.srcIn,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey.shade900, shape: BoxShape.circle),
                                                    child: Center(
                                                      child: SvgPicture.asset(
                                                        "assets/svg/stackoverflow.svg",
                                                        height: 32,
                                                        width: 32,
                                                        colorFilter: const ColorFilter.mode(
                                                          Colors.white,
                                                          BlendMode.srcIn,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding: const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey.shade900, shape: BoxShape.circle),
                                                    child: Center(
                                                      child: SvgPicture.asset(
                                                        "assets/svg/gmail.svg",
                                                        height: 32,
                                                        width: 32,
                                                        colorFilter: const ColorFilter.mode(
                                                          Colors.white,
                                                          BlendMode.srcIn,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
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
                  const SizedBox(
                    height: 8,
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 30,
                          child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: const Color(0xFF1E1B1E),
                              ),
                              child: Column(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Mobile Portfolio",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Voir tout",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.grey.shade700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Flexible(
                                    flex: 8,
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(24),
                                              image: const DecorationImage(
                                                image: AssetImage('assets/images/daymode_case.png'),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(24),
                                              image: const DecorationImage(
                                                image: AssetImage('assets/images/daymode_case.png'),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(24),
                                              image: const DecorationImage(
                                                image: AssetImage('assets/images/daymode_case.png'),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Flexible(
                          flex: 30,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(48),
                              color: const Color(0xFF1E1B1E),
                            ),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "A propos",
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "CV",
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.grey.shade700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Expanded(
                                  flex: 7,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                    style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                                  ),
                                )
                              ],
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
