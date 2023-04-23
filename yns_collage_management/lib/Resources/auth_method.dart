// ignore_for_file: non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

// Teachers or Admin Registration
  Future<String> AddAdminOrTeacher({
    required String role,
    required String id,
    required String subject,
    required String profile,
    required String department,
    required String language,
    required String name,
    required String fName,
    required String mName,
    required String dob,
    required String aadharNo,
    required String gender,
    required String address,
    required String phoneNo,
    required String email,
    required String password
  }) async {
    String res = "Some Error occurred";
    try {
      if (role.isNotEmpty ||
          id.isNotEmpty ||
          subject.isNotEmpty ||
          profile.isNotEmpty ||
          department.isNotEmpty ||
          language.isNotEmpty ||
          name.isNotEmpty ||
          fName.isNotEmpty ||
          mName.isNotEmpty ||
          dob.isNotEmpty ||
          aadharNo.isNotEmpty ||
          gender.isNotEmpty ||
          address.isNotEmpty ||
          phoneNo.isNotEmpty ||
          email.isNotEmpty ||
          password.isNotEmpty) {
        // register the user...
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        String Panel;
        if (role == 'Admin') {
          Panel = 'AD';
        } else {
          Panel = 'TE';
        }
        String docId = cred.user!.uid;
        String UID = Panel + docId;
        // add user in database...
        await _firestore.collection(role).doc(UID).set({
          'Role': role,
          'Id': id,
          'Subject': subject,
          'Job Profile': profile,
          'Department': department,
          'Language': language,
          'Name': name,
          'Father Name': fName,
          'Mother Name': mName,
          'Date of Birth': dob,
          'Aadhar No.': aadharNo,
          'Gender': gender,
          'Address': address,
          'Phone No.': phoneNo,
          'Email ID': email,
          'uid': UID
        });
        res = "Success";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // Student Registration
  Future<String> AddStudent({
    required String role,
    required String session,
    required String Class,
    required String department,
    required String rollNo,
    required String name,
    required String fName,
    required String mName,
    required String dob,
    required String aadharNo,
    required String gender,
    required String category,
    required String gOccupation,
    required String gIncome,
    required String address,
    required String phoneNo,
    required String email,
    required String password
  }) async {
    String res = "Some Error occurred";
    try {
      if (role.isEmpty ||
          session.isNotEmpty ||
          Class.isNotEmpty ||
          department.isNotEmpty ||
          rollNo.isNotEmpty ||
          name.isNotEmpty ||
          fName.isNotEmpty ||
          mName.isNotEmpty ||
          dob.isNotEmpty ||
          aadharNo.isNotEmpty ||
          gender.isNotEmpty ||
          category.isNotEmpty ||
          gOccupation.isNotEmpty ||
          gIncome.isNotEmpty ||
          address.isNotEmpty ||
          phoneNo.isNotEmpty ||
          email.isNotEmpty ||
          password.isNotEmpty) {
        // register the user...
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        String Panel = 'SE';
        String docId = cred.user!.uid;
        String UID = Panel + docId;
        // add user in database...
        await _firestore.collection(role).doc(UID).set({
          'Role': role,
          'Academic Session': session,
          'Class': Class,
          'Department': department,
          'Roll No.': rollNo,
          'Name': name,
          'Father Name': fName,
          'Mother Name': mName,
          'Date of Birth': dob,
          'Aadhar No.': aadharNo,
          'Gender': gender,
          'Category': category,
          'Guardian Occupation': gOccupation,
          'Guardian Income': gIncome,
          'Address': address,
          'Phone No.': phoneNo,
          'Email ID': email,
          'uid': UID
        });
        res = "Success";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // logging in user
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // logging in user with email and password
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
        );
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } catch (err) {
      return err.toString();
    }
    return res;
  }

  // log out
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
