
import 'package:advancec1/Screen/home/view/authication/hidden.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class FingerProvider extends ChangeNotifier
{
  final LocalAuthentication localAuth = LocalAuthentication();
  bool _didAuthenticate = false;

  Future<void> localUser(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e); // Handle platform exceptions
      return;
    }

    if (availableBiometrics.isEmpty) {
      // Show a message if no biometric methods are available
      return;
    }

    try {
      final didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Please authenticate to access secure data',
        // stickyAuth: true,
      );
      _didAuthenticate = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {
      print(e); // Handle platform exceptions
    }

    if(_didAuthenticate){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Hidescreen()
          ));
    }
  }
}