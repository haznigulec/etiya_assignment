import 'package:auto_route/auto_route.dart';
import 'package:etiya_assignment/app_router.dart';
import 'package:etiya_assignment/models/user.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(UserDetailRoute(user: user));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: const BorderRadius.all(Radius.circular(20)), border: Border.all(color: Colors.black.withOpacity(.3))),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Image
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            user.image,
                            height: 50,
                            width: 50,
                          ),
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(3.0),
                        margin: const EdgeInsets.only(left: 25, right: 5, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.withOpacity(.2),
                          shape: BoxShape.circle,
                        ),
                      ),
                      //Name and Title
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${user.firstName} ${user.maidenName} ${user.lastName}",
                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${user.company.title}",
                            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(user.age.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Age", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                        ],
                      ),
                      Container(
                        height: 17,
                        width: 1,
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(user.address.state.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("State", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                        ],
                      ),
                      Container(
                        height: 17,
                        width: 1,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.bloodtype_outlined,
                                color: Colors.red,
                              ),
                              Text(user.bloodGroup.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Text("Blood Type", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                        ],
                      ),
                      Container(
                        height: 17,
                        width: 1,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          user.gender == "male"
                              ? const Icon(
                                  Icons.male,
                                  size: 27,
                                  color: Colors.blue,
                                )
                              : const Icon(
                                  Icons.female,
                                  size: 27,
                                  color: Colors.pink,
                                ),
                          Text("Gender", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.arrow_forward),
            const SizedBox(width: 10)
          ],
        ),
      ),
    );
  }
}
