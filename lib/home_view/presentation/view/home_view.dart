import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
 class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int? _remoteUid;
  @override
  void initState() {
    super.initState();
    initForAgora();
  }

  Future<void> initForAgora() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agora One to one Video Call"),
      ),
      body: Stack(
        children: [
          Center(
            child: _renderRemoteVideo(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100,
              height: 100,
              child: Center(
                child: _renderLocalePreview(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _renderLocalePreview() {
    return Container();
  }

  Widget _renderRemoteVideo() {
    if (_remoteUid != null) {
      return Container();
    } else {
      return const Text(
        "Please wait remote user to join",
        textAlign: TextAlign.center,
      );
    }
  }
}
