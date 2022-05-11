import 'package:flutter/material.dart';
import 'package:kidsloop_app_flutter/widgets/content_runtime.dart';
import 'package:kidsloop_app_flutter/widgets/video_coferencing/actions.dart';
import 'package:kidsloop_app_flutter/widgets/video_coferencing/confirm_leave_dialog.dart';

class LiveClassScreen extends StatelessWidget {
  const LiveClassScreen({Key? key}) : super(key: key);

  static const routeName = "liveClass";

  @override
  Widget build(BuildContext context) {
    int x = 5;

    return WillPopScope(
      onWillPop: () async => showConfirmLeaveClassDialog(context),
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ContentRuntime(),
              ),
            ],
          ),
          bottomNavigationBar: VideoConferencingActions(),
        ),
      ),
    );
  }
}
