// ignore_for_file: non_constant_identifier_names

import 'dart:html';
import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myFriends.dart';
import 'package:task_management_app/app/utils/widget/peopleYouMayKnow.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';

import '../controllers/friends_controller.dart';

// ignore: use_key_in_widget_constructors
class FriendsView extends GetView<FriendsController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final AuthCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 150, child: SideBar()),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(children: [
                !context.isPhone
                    ? const header()
                    : Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _drawerKey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(
                                    Icons.menu,
                                    color: AppColors.primaryText,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Travel Holiday',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText,
                                      ),
                                    ),
                                    Text(
                                      'Lets Travel with ME and TOGETHER',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryText,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Icon(
                                  Ionicons.notifications,
                                  color: AppColors.primaryText,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 25,
                                    foregroundImage: NetworkImage(
                                        'https://i0.wp.com/artforia.com/wp-content/uploads/2017/03/Pria-Tampan-di-Jepang-Harus-Bayar-Pajak-Lebih.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            context.isPhone
                                ? TextField(
                                    onChanged: (value) =>
                                        AuthCon.SearchFriends(value),
                                    controller: AuthCon.SearchFriendsController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: const EdgeInsets.only(
                                          left: 40, right: 10),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                            color: Colors.white),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.blue,
                                        ),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Cari',
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),

                // Content / Isi Page / Screen
                Expanded(
                  child: Container(
                    padding: !context.isPhone
                        ? const EdgeInsets.all(50)
                        : const EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? const EdgeInsets.all(20)
                        : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(30),
                    ),
                    child: Obx(
                      () => AuthCon.hasilPencarian.isEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  const Text(
                                    'Orang yang anda kenali',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: AppColors.primaryText),
                                  ),
                                  PeopleYouMayKnow(),
                                  Myfriends(),
                                ])
                          : ListView.builder(
                              padding: const EdgeInsets.all(8),
                              shrinkWrap: true,
                              itemCount: AuthCon.hasilPencarian.length,
                              itemBuilder: (context, index) => ListTile(
                                onTap: () => AuthCon.addFriends(
                                    AuthCon.hasilPencarian[index]['email']),
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image(
                                    image: NetworkImage(
                                        AuthCon.hasilPencarian[index]['photo']),
                                    height: Get.width * 0.35,
                                    width: Get.width * 0.4,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                title:
                                    Text(AuthCon.hasilPencarian[index]['name']),
                                subtitle: Text(
                                    AuthCon.hasilPencarian[index]['email']),
                                trailing: const Icon(Ionicons.add),
                              ),
                            ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
