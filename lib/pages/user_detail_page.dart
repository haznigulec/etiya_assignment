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
      body: Container(
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
                  Text(user.address.state.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("State", style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                ],
              ),
              Container(
                height: 17,
                width: 1,
                color: Colors.black,
              ),
              Row(
                children: [
                  Icon(
                    Icons.bloodtype_outlined,
                    color: Colors.red,
                  ),
                  Text(user.bloodGroup.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                height: 17,
                width: 1,
                color: Colors.black,
              ),
              user.gender == "male"
                  ? const Icon(
                      Icons.male,
                      size: 30,
                      color: Colors.blue,
                    )
                  : const Icon(
                      Icons.female,
                      size: 30,
                      color: Colors.pink,
                    ),
            ],
          ),
          SizedBox(height: 20),
          //Eye & Birth
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    user.eyeColor,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    user.birthDate,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //Height & Weight
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.height,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    user.height.toString(),
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.monitor_weight,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    user.weight.toString(),
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //Phone
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                user.phone,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20),
          //Mail
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.mail_outline,
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                user.email,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20),
          //UserName & Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "User Name",
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(width: 10),
                  Text(
                    user.username,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Text(
                        user.password,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //Domain & Ip
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.domain,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    user.domain,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.ads_click_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    user.ip,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                IconData(0x1F487),
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                "${user.hair.type} ${user.hair.color}",
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.apartment_outlined,
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                "${user.address.address} / ${user.address.postalCode}",
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.credit_card,
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                "${user.bank.iban}",
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
