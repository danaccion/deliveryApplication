class PostOrdersResp {
  bool? success;
  Data? data;
  String? message;

  PostOrdersResp({this.success, this.data, this.message});

  PostOrdersResp.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.success != null) {
      data['success'] = this.success;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    if (this.message != null) {
      data['message'] = this.message;
    }
    return data;
  }
}

class Data {
  String? itemDescription;
  String? price;
  Null? userId;
  String? paymentMethod;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data(
      {this.itemDescription,
      this.price,
      this.userId,
      this.paymentMethod,
      this.updatedAt,
      this.createdAt,
      this.id});

  Data.fromJson(Map<String, dynamic> json) {
    itemDescription = json['item_description'];
    price = json['price'];
    userId = json['user_id'];
    paymentMethod = json['payment_method'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.itemDescription != null) {
      data['item_description'] = this.itemDescription;
    }
    if (this.price != null) {
      data['price'] = this.price;
    }
    if (this.userId != null) {
      data['user_id'] = this.userId;
    }
    if (this.paymentMethod != null) {
      data['payment_method'] = this.paymentMethod;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    return data;
  }
}
