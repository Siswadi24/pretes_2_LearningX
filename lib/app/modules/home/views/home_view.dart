import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pretest_2/app/data/model/profile_model.dart';
import 'package:pretest_2/app/themes/app_font.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',
            style: text21.copyWith(fontSize: 25, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: controller.getProfileModel(),
          builder: (_, snapshot) {
            var dataProfile = snapshot.data; //dataProfile.results[0].name.first
            // var dataProfileLocation = snapshot.data;

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.amber,
                ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else if (snapshot.hasData) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            // Add an avatar image if desired
                            backgroundColor: Colors.white,
                            child: CachedNetworkImage(
                                imageUrl:
                                    "${dataProfile?.results[0].picture.large}"
                                        .toString()),
                          ),
                          const SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${dataProfile?.results[0].name.first} ${dataProfile?.results[0].name.last}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("${dataProfile?.results[0].name.title}"),
                              Text("${dataProfile?.results[0].gender}"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      const Text("bio"),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              // Launch website
                            },
                            icon: const Icon(Icons.link),
                            label: const Text("website"),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              // Launch email app
                            },
                            icon: const Icon(Icons.email),
                            label: const Text("email"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              // Launch phone app
                            },
                            icon: const Icon(Icons.phone),
                            label: const Text("phone"),
                          ),
                          // Text("${dataProfile?.results[0].city}"),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("${dataProfile?.results[0].location.city}"),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Center(
                  child: Text(
                'Tidak Terdapat Data',
                style:
                    text20.copyWith(fontSize: 25, fontWeight: FontWeight.w600),
              ));
            }
          }),
    );
  }
}
