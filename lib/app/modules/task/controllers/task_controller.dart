// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';

class TaskController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  UserCredential? userCredential;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AuthCon = Get.find<AuthController>();

  late TextEditingController titleController,
      descriptionController,
      dueDateController;

  get FormKey => null;

  @override
  void onInit() {
    super.onInit();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    dueDateController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    titleController.dispose();
    descriptionController.dispose();
    dueDateController.dispose();
  }

  void saveUpdateTask(
    String? titel,
    String? description,
    String? dueDate,
    String? docId,
    String? type,
  ) async {
    print(titel);
    print(description);
    print(dueDate);
    print(docId);
    print(type);

    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    CollectionReference taskColl = firestore.collection('taks');
    CollectionReference usersColl = firestore.collection('users');
    var taskId = DateTime.now().toIso8601String();
    if (type == 'Add') {
      await taskColl.doc(taskId).set({
        'title': titel,
        'description': description,
        'dueDate': dueDate,
        'status': '0',
        'total_task': '0',
        'total_task_finished': '0',
        'task_detail': [],
        'asign_to': [AuthCon.auth.currentUser!.email],
        'created_by': AuthCon.auth.currentUser!.email,
      }).whenComplete(() async {
        await usersColl.doc(AuthCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskId])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar('Task', 'Succesfuly $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Error $type');
      });
    } else {
      await taskColl.doc(docId).update({
        'title': titel,
        'description': description,
        'dueDate': dueDate,
      }).whenComplete(() async {
        await usersColl.doc(AuthCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskId])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar('Task', 'Succesfuly $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Error $type');
      });
    }
  }
}
