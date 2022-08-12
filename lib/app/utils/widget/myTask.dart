import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class myTask extends StatelessWidget {
  const myTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: ListView(
          clipBehavior: Clip.antiAlias,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            Container(
              width: 400,
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
                          '9 / 10 Rating',
                          style: TextStyle(
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Canda Prambanan',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'IDR 450.000 / orang',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 15,
                      ),
                    ),
                  ]),
            ),
            Container(
              width: 400,
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
                          '10 / 10 Rating',
                          style: TextStyle(
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Candi Borobudur',
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
            Container(
              width: 400,
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
                          '10 / 10 Rating',
                          style: TextStyle(
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Bali',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'IDR 1.000.000 / orang',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 15,
                      ),
                    ),
                  ]),
            ),
            Container(
              width: 400,
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
                          '8,5 / 10 Rating',
                          style: TextStyle(
                            color: AppColors.primaryText,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Pantai Kuta',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'IDR 700.000 / orang',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 15,
                      ),
                    ),
                  ]),
            ),
          ]),
    );
  }
}
