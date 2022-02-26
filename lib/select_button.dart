import 'package:flutter/material.dart';

import 'constants.dart';

class SelectButton extends StatefulWidget {
  const SelectButton({Key? key}) : super(key: key);

  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: isSelected ? Colors.blue : const Color(0xff1C4843)),
        width: SizeConstants.buttonSize.width,
        height: SizeConstants.buttonSize.height,
        child: const Center(
            child: Text(
          'Lựa chọn',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        )),
      ),
    );
  }
}
