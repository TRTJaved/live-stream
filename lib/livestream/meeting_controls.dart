import 'package:flutter/material.dart';

class MeetingControls extends StatelessWidget {
  final String hlsState;
  final void Function() onToggleMicButtonPressed;
  final void Function() onToggleCameraButtonPressed;
  final void Function() onHLSButtonPressed;

  const MeetingControls(
      {super.key,
      required this.hlsState,
      required this.onToggleMicButtonPressed,
      required this.onToggleCameraButtonPressed,
      required this.onHLSButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ElevatedButton(
          onPressed: onToggleMicButtonPressed,
          child: const Text(
            'Mic',
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
            onPressed: onToggleCameraButtonPressed, child: const Text('Cam')),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: onHLSButtonPressed,
          child: Text(hlsState == "HLS_STOPPED"
              ? 'Go Live'
              : hlsState == "HLS_STARTING"
                  ? "Starting Live"
                  : hlsState == "HLS_STARTED" || hlsState == "HLS_PLAYABLE"
                      ? "Stop Live"
                      : hlsState == "HLS_STOPPING"
                          ? "Stopping Live"
                          : "Start Live"),
        ),
      ],
    );
  }
}
