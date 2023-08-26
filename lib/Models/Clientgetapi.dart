
class Getclientdetails {
  bool success;
  List<ClientList> clientList;

  Getclientdetails({
    required this.success,
    required this.clientList,
  });

  factory Getclientdetails.fromJson(Map<String, dynamic> json) => Getclientdetails(
    success: json["success"],
    clientList: List<ClientList>.from(json["clientList"].map((x) => ClientList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "clientList": List<dynamic>.from(clientList.map((x) => x.toJson())),
  };
}

class ClientList {
  int clientId;
  String clientName;
  String phone;
  String address;
  String gst;
  String website;
  String email;
  String contactPerson;
  String phoneNumber;
  dynamic removedOn;
  dynamic removedRemarks;
  int createdBy;

  ClientList({
    required this.clientId,
    required this.clientName,
    required this.phone,
    required this.address,
    required this.gst,
    required this.website,
    required this.email,
    required this.contactPerson,
    required this.phoneNumber,
    this.removedOn,
    this.removedRemarks,
    required this.createdBy,
  });

  factory ClientList.fromJson(Map<String, dynamic> json) => ClientList(
    clientId: json["clientId"],
    clientName: json["clientName"],
    phone: json["phone"],
    address: json["address"],
    gst: json["gst"],
    website: json["website"],
    email: json["email"],
    contactPerson: json["contactPerson"],
    phoneNumber: json["phoneNumber"],
    removedOn: json["removedOn"],
    removedRemarks: json["removedRemarks"],
    createdBy: json["createdBy"],
  );

  Map<String, dynamic> toJson() => {
    "clientId": clientId,
    "clientName": clientName,
    "phone": phone,
    "address": address,
    "gst": gst,
    "website": website,
    "email": email,
    "contactPerson": contactPerson,
    "phoneNumber": phoneNumber,
    "removedOn": removedOn,
    "removedRemarks": removedRemarks,
    "createdBy": createdBy,
  };
}
