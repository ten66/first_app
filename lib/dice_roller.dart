import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      // Columnが縦方向全体の領域を取らないようにする
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

// class name extends StatefulWidget {
//   name({Key? key}) : super(key: key);

//   @override
//   State<name> createState() => _nameState();
// }

// class _nameState extends State<name> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
