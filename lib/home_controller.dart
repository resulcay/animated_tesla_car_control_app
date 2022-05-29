import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedBottomTab = 0;

  bool isRightDoorLocked = true;
  bool isLeftDoorLocked = true;
  bool isBonnetLocked = true;
  bool isTrunkLocked = true;

  void onBottomNavigationTabChanged(int index) {
    selectedBottomTab = index;
    notifyListeners();
  }

  void updateRightDoorLock() {
    isRightDoorLocked = !isRightDoorLocked;
    notifyListeners();
  }

  void updateLeftDoorLock() {
    isLeftDoorLocked = !isLeftDoorLocked;
    notifyListeners();
  }

  void updateBonnetLock() {
    isBonnetLocked = !isBonnetLocked;
    notifyListeners();
  }

  void updateTrunkLock() {
    isTrunkLocked = !isTrunkLocked;
    notifyListeners();
  }

  bool isCoolSelectedTab = true;
  bool isHeatSelectedTab = false;

  void updateCoolSelectedTab() {
    isCoolSelectedTab = !isCoolSelectedTab;
    notifyListeners();
    if (isCoolSelectedTab == true) {
      isHeatSelectedTab = false;
    }
  }

  void updateHeatSelectedTab() {
    isHeatSelectedTab = !isHeatSelectedTab;
    notifyListeners();
    if (isHeatSelectedTab == true) {
      isCoolSelectedTab = false;
    }
  }

  bool isShowTyre = false;

  void showTyreController(int index) {
    if (selectedBottomTab != 3 && index == 3) {
      Future.delayed(
        Duration(milliseconds: 400),
        () {
          isShowTyre = true;
          notifyListeners();
        },
      );
    } else {
      isShowTyre = false;
      notifyListeners();
    }
  }

  bool isShowTyreStatus = false;

  void tyreStatusController(int index) {
    if (selectedBottomTab != 3 && index == 3) {
      isShowTyreStatus = true;
      notifyListeners();
    } else {
      Future.delayed(Duration(milliseconds: 600), () {
        isShowTyreStatus = false;
        notifyListeners();
      });
    }
  }
}
