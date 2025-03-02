import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final String ctext;
  const ReusableContainer({
    required this.ctext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.mobile_friendly)),
            Expanded(
              child: Text(
                ctext,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
