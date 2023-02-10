import 'package:etiya_assignment/models/user.dart';
import 'package:etiya_assignment/widgets/appbar.dart';
import 'package:flutter/material.dart';

class UserDetailView extends StatelessWidget {
  const UserDetailView({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            //Image
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.network(
                  user.image,
                  height: 100,
                  width: 100,
                ),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(3.0),
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.purpleAccent.withOpacity(.2),
                shape: BoxShape.circle,
              ),
            ),
            //Name
            Text(
              "${user.firstName} ${user.maidenName} ${user.lastName}",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            //Row Inofos
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
                    Text(user.address.state.toString(),
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                        Text(user.bloodGroup.toString(),
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    infoTileLeft("Eye Color", user.eyeColor, Icons.remove_red_eye_outlined),
                    SizedBox(height: 20),
                    infoTileLeft("Height", user.height.toString(), Icons.height_outlined),
                    SizedBox(height: 20),
                    infoTileLeft("Phone Number", user.phone, Icons.phone_android_outlined),
                    SizedBox(height: 20),
                    infoTileLeft(
                      "User Name",
                      user.username,
                      Icons.account_box_outlined,
                    ),
                    SizedBox(height: 20),
                    infoTileLeft("Domain", user.domain, Icons.domain_outlined),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    infoTileRight("Birth Date", user.birthDate, Icons.calendar_month_outlined),
                    SizedBox(height: 20),
                    infoTileRight("Weight", user.weight.toString(), Icons.monitor_weight_outlined),
                    SizedBox(height: 20),
                    infoTileRight("Mail", user.email, Icons.mail_outline),
                    SizedBox(height: 20),
                    infoTileRight("Password", user.password, Icons.key_outlined),
                    SizedBox(height: 20),
                    infoTileRight("Ip", user.ip, Icons.ads_click_outlined),
                  ],
                )
              ],
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                infoTileLeft("Address", user.address.address ?? "Unknown", Icons.apartment_outlined),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                infoTileRight("IBAN", user.bank.iban ?? "Unknown", Icons.credit_card_outlined),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget infoTileLeft(String title, String value, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 20,
            ),
            SizedBox(width: 5),
            
            Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            
          ],
        ),
        SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget infoTileRight(String title, String value, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            SizedBox(width: 5),
            Icon(
              icon,
              size: 20,
            ),
          ],
        ),
        SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
