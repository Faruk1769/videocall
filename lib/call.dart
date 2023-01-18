// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:videocall/contants.dart';
import 'package:videocall/login.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class MyCall extends StatelessWidget {
  const MyCall({Key? key,required this.callID}) : super(key: key);
   final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: MyConst.appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: MyConst.appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: MyLogin.userId,
      userName: MyLogin.name,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall() 
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
    // ignore: prefer_const_constructors
    return Scaffold(
      
    );
  }
}