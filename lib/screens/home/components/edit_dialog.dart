import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditDialog extends StatefulWidget {
  const EditDialog({Key? key, required this.isGradient, required this.onChange}) : super(key: key);

  final bool isGradient;
  final ValueChanged<bool> onChange;

  @override
  State<EditDialog> createState() => _EditDialogState();
}

class _EditDialogState extends State<EditDialog> {

  bool _isGradient = false;

  @override
  void initState() {
    _isGradient = widget.isGradient;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Center(child: Text("Edit Settings")),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Gradient:"),
            Switch(
              value: _isGradient,
              onChanged: (value) {
                setState(() {
                  _isGradient = !_isGradient;
                });
              },
            ),
          ]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
                widget.onChange(_isGradient);
              },
              child: const Text('Apply',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }

}