import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class upcomingTask extends StatelessWidget {
  const upcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wisata Lainnya',
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 30,
              ),
            ),
            Text(
              'Comming soon',
              style: TextStyle(
                color: AppColors.primaryText,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: ListView(
                clipBehavior: Clip.antiAlias,
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 80,
                            color: AppColors.primaryBg,
                            child: const Center(
                              child: Text(
                                '10 / 10 Task',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Raja Ampat',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            'IDR 1.500.000 / orang',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 15,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 80,
                            color: AppColors.primaryBg,
                            child: const Center(
                              child: Text(
                                '8 / 10 Task',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                ),
                              ),
                            ),
                          ),
                          const Text(
                            'Danau Toba',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            'IDR 500.000 / orang',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 15,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
