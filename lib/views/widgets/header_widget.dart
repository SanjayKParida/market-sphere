import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String hintText;
  const HeaderWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: size.width,
      height: size.height * 0.1445,
      child: Stack(
        children: [
          Image.asset(
            'assets/icons/searchBanner.jpeg',
            width: size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
              left: size.width * 0.03,
              top: size.height * 0.06,
              child: SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    filled: true,
                  ),
                ),
              )),
          Positioned(
              left: 275,
              top: 57,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/icons/bell.png'),
                    )),
                  ),
                ),
              )),
          Positioned(
            left: 320,
            top: 57,
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                child: Ink(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/icons/message.png'),
                  )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
