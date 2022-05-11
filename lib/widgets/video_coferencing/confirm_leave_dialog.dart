import 'package:flutter/material.dart';

Future<bool> showConfirmLeaveClassDialog(BuildContext context) async {
  return await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(
              child: Text("End Class"),
            ),
            actionsAlignment: MainAxisAlignment.end,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber[100]!.withOpacity(0.5),
                  ),
                  child: Icon(
                    Icons.warning,
                    size: 32,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  "Are you sure to end the class?\nEnding the class will close session for all users.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            actions: [
              TextButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: Text("End Class"),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
            ],
          );
        },
      ) ??
      false;
}
