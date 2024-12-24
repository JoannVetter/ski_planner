class ProfilesModel {
  // Saves items used
  double userID = 0;
  List<bool> isAvailable = [false, false, false, false, false];
  // Constructor
  ProfilesModel({required this.userID, List<bool>? isAvailable})
      : isAvailable = isAvailable ?? [false, false, false, false, false];
  //getters
  List<bool> getEquippedItems(){
    return isAvailable;
  }
  double getUserID(){
    return userID;
  }
  //setters
  void setItemAvailable(int itemID, bool value){
    isAvailable[itemID] = value;
  }
  void setUserID(double newID){
    userID = newID;
  }
}
