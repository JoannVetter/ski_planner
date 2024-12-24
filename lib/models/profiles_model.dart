class ProfilesModel {
  // Saves items used
  int userID = 0;
  List<bool> isAvailable = [false, false, false, false, false];
  // Constructor
  ProfilesModel({required this.userID, List<bool>? isAvailable})
      : isAvailable = isAvailable ?? [false, false, false, false, false];
  //getters
  List<bool> getEquippedItems(){
    return isAvailable;
  }
  int getUserID(){
    return userID;
  }
  //setters
  void setItemAvailable(int itemID, bool value){
    isAvailable[itemID] = value;
  }
  void setUserID(int newID){
    userID = newID;
  }
}
