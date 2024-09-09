import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../utils.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icons/bg$bgId.png'),
          fit: BoxFit.fitHeight,
          alignment: Alignment.centerLeft,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.0),
          ),
        ),
      ),
    );
  }
}

class CheckBonus extends StatefulWidget {
  final String bonus;
  final String daxsa;
  final String nfjksd;
  final String aadx;
  final String params;
  final String keyID;
  final String campId;

  const CheckBonus(
      {super.key,
      required this.bonus,
      required this.daxsa,
      required this.nfjksd,
      required this.aadx,
      required this.params,
      required this.keyID,
      required this.campId});

  @override
  State<CheckBonus> createState() => _CheckBonusState();
}

class _CheckBonusState extends State<CheckBonus> {
  @override
  void initState() {
    super.initState();
    _unlockOrientation();
  }

  void _unlockOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final String nmjkfsdkjfs =
        '${widget.bonus}${widget.daxsa}&utm_campaign=${widget.nfjksd}&appsflyerId=${widget.aadx}${widget.params}&click_key_id=${widget.keyID}&click_campainId=${widget.campId}';
    print(nmjkfsdkjfs);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(nmjkfsdkjfs),
          ),
        ),
      ),
    );
  }
}
