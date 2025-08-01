class cartModel {
  int? cartUserid;
  int? cartItemid;
  int? itemCount;
  double? totalPrice;
  int? itemsId;
  String? itemsNameEn;
  String? itemsNameAr;
  String? itemsDescriptionEn;
  String? itemsDescriptionAr;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  double? singleItemPrice;
  int? itemsDiscount;
  String? itemsDate;
  int? itemsCatrgories;

cartModel(
      {this.cartUserid,
      this.cartItemid,
      this.itemCount,
      this.totalPrice,
      this.itemsId,
      this.itemsNameEn,
      this.itemsNameAr,
      this.itemsDescriptionEn,
      this.itemsDescriptionAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.singleItemPrice,
      this.itemsDiscount,
      this.itemsDate,
      this.itemsCatrgories});

cartModel.fromJson(Map<String, dynamic> json) {
    cartUserid = json['cart_userid'];
    cartItemid = json['cart_itemid'];
    itemCount = json['itemCount'];
    totalPrice = json['totalPrice'];
    itemsId = json['items_id'];
    itemsNameEn = json['items_name_en'];
    itemsNameAr = json['items_name_ar'];
    itemsDescriptionEn = json['items_description_en'];
    itemsDescriptionAr = json['items_description_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    singleItemPrice = json['singleItemPrice'];
    itemsDiscount = json['items_discount'];
    itemsDate = json['items_date'];
    itemsCatrgories = json['items_catrgories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_userid'] = this.cartUserid;
    data['cart_itemid'] = this.cartItemid;
    data['itemCount'] = this.itemCount;
    data['totalPrice'] = this.totalPrice;
    data['items_id'] = this.itemsId;
    data['items_name_en'] = this.itemsNameEn;
    data['items_name_ar'] = this.itemsNameAr;
    data['items_description_en'] = this.itemsDescriptionEn;
    data['items_description_ar'] = this.itemsDescriptionAr;
    data['items_image'] = this.itemsImage;
    data['items_count'] = this.itemsCount;
    data['items_active'] = this.itemsActive;
    data['singleItemPrice'] = this.singleItemPrice;
    data['items_discount'] = this.itemsDiscount;
    data['items_date'] = this.itemsDate;
    data['items_catrgories'] = this.itemsCatrgories;
    return data;
  }
}