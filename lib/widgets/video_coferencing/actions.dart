import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kidsloop_app_flutter/widgets/video_coferencing/confirm_leave_dialog.dart';

class VideoConferencingActions extends StatefulWidget {
  const VideoConferencingActions({
    Key? key,
  }) : super(key: key);

  @override
  State<VideoConferencingActions> createState() => _VideoConferencingActionsState();
}

class _VideoConferencingActionsState extends State<VideoConferencingActions> {
  var isVideoCamEnabled = false;
  var isMicEnabled = false;
  var isLongPressEndClass = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 8,
        children: [
          Tooltip(
            preferBelow: false,
            message: isMicEnabled ? "Turn off microphone" : "Turn on microphone",
            child: MaterialButton(
              height: 56,
              minWidth: 56,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              color: !isMicEnabled ? Colors.red.withOpacity(0.10) : null,
              elevation: 0,
              highlightElevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              child: Icon(
                isMicEnabled ? Icons.mic : Icons.mic_off,
                color: isMicEnabled ? Colors.black87 : Colors.red,
              ),
              onPressed: () {
                setState(() {
                  isMicEnabled = !isMicEnabled;
                });
              },
            ),
          ),
          MaterialButton(
            height: 56,
            minWidth: 56,
            onHighlightChanged: (changed) {
              setState(() {
                isLongPressEndClass = changed;
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedScale(
                  duration: Duration(milliseconds: 100),
                  scale: isLongPressEndClass ? 1.1 : 1,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.25),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text("End Class"),
              ],
            ),
            onPressed: () async {
              final confirmLeave = await showConfirmLeaveClassDialog(context);
              if (!confirmLeave) return;
              context.pop();
            },
          ),
          Tooltip(
            preferBelow: false,
            message: isVideoCamEnabled ? "Turn off camera" : "Turn on camera",
            child: MaterialButton(
              height: 56,
              minWidth: 56,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              color: !isVideoCamEnabled ? Colors.red.withOpacity(0.10) : null,
              elevation: 0,
              highlightElevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              child: Icon(
                isVideoCamEnabled ? Icons.videocam : Icons.videocam_off,
                color: isVideoCamEnabled ? Colors.black87 : Colors.red,
              ),
              onPressed: () {
                setState(() {
                  isVideoCamEnabled = !isVideoCamEnabled;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
