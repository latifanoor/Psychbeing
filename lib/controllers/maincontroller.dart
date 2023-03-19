import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:psychbeing_app/controllers/authcontroller.dart';
import 'package:psychbeing_app/utils/utils.dart';

class maincontroller extends GetxController {
  var firestore;
  //Creating a table (collections)
  var newscollection = <String, dynamic>{}.obs;
  var therapy = <String, dynamic>{}.obs;
  //Variables to list content
  var newscollectionSelectedID = "".obs;
  var therapySelectedID = "".obs;

  @override
  void onReady() {
    super.onReady();
    firestore = FirebaseFirestore.instance;
    //The recarive list
    newscollection.bindStream(newscollectionStream());
    therapy.bindStream(therapyStream());
  }

  //Creating Data
  createnewscollection(image, comment) async {
    Utils.showLoading(message: "creating newscollection");
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection('newscollection').add({
        "username": AuthController.to.firebaseUserData.value['username'],
        "image": image,
        "comment": comment,
        "created": Timestamp.now(),
      });
      Utils.showSuccess("Posted");
    } catch (e) {
      Utils.showError("Try again");
    }
    Utils.dismissLoader();
  }

  // createtherapy(image, name, bio, email) async {
  //   Utils.showLoading(message: "creating therapy");
  //   var userId = AuthController.to.firebaseUser.value?.uid;
  //   try {
  //     await firestore.collection('therapy').add({
  //       "email": email,
  //       "image": image,
  //       "bio": bio,
  //       "name": name,
  //       "created": Timestamp.now(),
  //     });
  //     Utils.showSuccess("Posted");
  //   } catch (e) {
  //     Utils.showError("Try again");
  //   }
  //   Utils.dismissLoader();
  // }

  //UPDATING DATA
  updatenewscollection(image, comment) async {
    Utils.showLoading(message: "updating newscollection");
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore
          .collection('newscollection')
          .doc(therapySelectedID.value)
          .update({
        "username": AuthController.to.firebaseUserData.value['username'],
        "image": image,
        "comment": comment,
      });
      Utils.showSuccess("Post Updated");
    } catch (e) {
      Utils.showError("Try again");
    }
    Utils.dismissLoader();
  }

  // updatetherapy(image, bio, name) async {
  //   Utils.showLoading(message: "updating therapy");
  //   var userId = AuthController.to.firebaseUser.value?.uid;
  //   try {
  //     await firestore.collection('therapy').set({
  //       "userId": userId,
  //       "image": image,
  //       "bio": bio,
  //       "name": name,
  //     });
  //     Utils.showSuccess("Post Updated");
  //   } catch (e) {
  //     Utils.showError("Try again");
  //   }
  //   Utils.dismissLoader();
  // }

  //Deleting data
  deletenewscollection(id) async {
    Utils.showLoading(message: "Deleting newscollection");
    var userId = AuthController.to.firebaseUser.value?.uid;
    try {
      await firestore.collection('newscollection').doc(id).delete();

      Utils.showSuccess("Deleted");
    } catch (e) {
      Utils.showError("Try again");
    }
    Utils.dismissLoader();
  }

  // deleteTherapy(id) async {
  //   Utils.showLoading(message: "Deleting therapy");
  //   var userId = AuthController.to.firebaseUser.value?.uid;
  //   try {
  //     await firestore.collection('threapy').doc(id).delete();

  //     Utils.showSuccess("Deleted");
  //   } catch (e) {
  //     Utils.showError("Try again");
  //   }
  //   Utils.dismissLoader();
  // }

  //Fetch livestream
  Stream<Map<String, dynamic>> newscollectionStream() {
    var ref =
        FirebaseFirestore.instance.collection("newscollection").snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

  Stream<Map<String, dynamic>> therapyStream() {
    var ref = FirebaseFirestore.instance.collection("therapy").snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

  //Select an item id
  selectnewscollection(id) {
    newscollectionSelectedID.value = id;
    update();
  }

  selectTherapy(id) {
    therapySelectedID.value = id;
    update();
  }
}
