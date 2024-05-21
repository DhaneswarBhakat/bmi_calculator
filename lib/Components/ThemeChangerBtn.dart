import 'package:flutter/material.dart';

class ThemeChangerBtn extends StatelessWidget {
  const ThemeChangerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //height: 50,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.dark_mode,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.light_mode,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
