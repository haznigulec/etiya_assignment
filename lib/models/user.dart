class User {
  late int id;
  late String firstName;
  late String lastName;
  late String maidenName;
  late int age;
  late String gender;
  late String email;
  late String phone;
  late String username;
  late String password;
  late String birthDate;
  late String image;
  late String bloodGroup;
  late int height;
  late double weight;
  late String eyeColor;
  late Hair hair;
  late String domain;
  late String ip;
  late Address address;
  late String macAddress;
  late String university;
  late Bank bank;
  late Company company;
  late String ein;
  late String ssn;
  late String userAgent;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.maidenName,
      required this.age,
      required this.gender,
      required this.email,
      required this.phone,
      required this.username,
      required this.password,
      required this.birthDate,
      required this.image,
      required this.bloodGroup,
      required this.height,
      required this.weight,
      required this.eyeColor,
      required this.hair,
      required this.domain,
      required this.ip,
      required this.address,
      required this.macAddress,
      required this.university,
      required this.bank,
      required this.company,
      required this.ein,
      required this.ssn,
      required this.userAgent});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    maidenName = json['maidenName'];
    age = json['age'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    username = json['username'];
    password = json['password'];
    birthDate = json['birthDate'];
    image = json['image'];
    bloodGroup = json['bloodGroup'];
    height = json['height'];
    weight = json['weight'].toDouble();
    eyeColor = json['eyeColor'];
    hair = Hair.fromJson(json['hair']);
    domain = json['domain'];
    ip = json['ip'];
    address = Address.fromJson(json['address']);
    macAddress = json['macAddress'];
    university = json['university'];
    bank = Bank.fromJson(json['bank']);
    company = Company.fromJson(json['company']);
    ein = json['ein'];
    ssn = json['ssn'];
    userAgent = json['userAgent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['maidenName'] = maidenName;
    data['age'] = age;
    data['gender'] = gender;
    data['email'] = email;
    data['phone'] = phone;
    data['username'] = username;
    data['password'] = password;
    data['birthDate'] = birthDate;
    data['image'] = image;
    data['bloodGroup'] = bloodGroup;
    data['height'] = height;
    data['weight'] = weight;
    data['eyeColor'] = eyeColor;
    data['hair'] = hair.toJson();
    data['domain'] = domain;
    data['ip'] = ip;
    data['address'] = address.toJson();
    data['macAddress'] = macAddress;
    data['university'] = university;
    data['bank'] = bank.toJson();
    data['company'] = company.toJson();
    data['ein'] = ein;
    data['ssn'] = ssn;
    data['userAgent'] = userAgent;
    return data;
  }
}

class Hair {
  String? color;
  String? type;

  Hair({this.color, this.type});

  Hair.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['type'] = type;
    return data;
  }
}

class Address {
  String? address;
  String? city;
  Coordinates? coordinates;
  String? postalCode;
  String? state;

  Address({this.address, this.city, this.coordinates, this.postalCode, this.state});

  Address.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    coordinates = json['coordinates'] != null ? Coordinates.fromJson(json['coordinates']) : null;
    postalCode = json['postalCode'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['city'] = city;
    if (coordinates != null) {
      data['coordinates'] = coordinates!.toJson();
    }
    data['postalCode'] = postalCode;
    data['state'] = state;
    return data;
  }
}

class Coordinates {
  double? lat;
  double? lng;

  Coordinates({this.lat, this.lng});

  Coordinates.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank({this.cardExpire, this.cardNumber, this.cardType, this.currency, this.iban});

  Bank.fromJson(Map<String, dynamic> json) {
    cardExpire = json['cardExpire'];
    cardNumber = json['cardNumber'];
    cardType = json['cardType'];
    currency = json['currency'];
    iban = json['iban'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cardExpire'] = cardExpire;
    data['cardNumber'] = cardNumber;
    data['cardType'] = cardType;
    data['currency'] = currency;
    data['iban'] = iban;
    return data;
  }
}

class Company {
  Address? address;
  String? department;
  String? name;
  String? title;

  Company({this.address, this.department, this.name, this.title});

  Company.fromJson(Map<String, dynamic> json) {
    address = json['address'] != null ? Address.fromJson(json['address']) : null;
    department = json['department'];
    name = json['name'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (address != null) {
      data['address'] = address!.toJson();
    }
    data['department'] = department;
    data['name'] = name;
    data['title'] = title;
    return data;
  }
}
