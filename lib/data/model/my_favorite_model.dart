class MyFavoriteModel {
  int? favoriteId;
  int? favoriteUsersid;
  int? favoriteItemsid;
  int? itemsId;
  String? itemsNameEn;
  String? itemsNameAr;
  String? itemsDescriptionEn;
  String? itemsDescriptionAr;
  String? itemsImage;
  int? itemsCount;
  int? itemsActive;
  double? itemsPrice;
  int? itemsDiscount;
  String? itemsDate;
  int? itemsCatrgories;
  int? usersId;

  MyFavoriteModel(
      {
        
        this.favoriteId,
      this.favoriteUsersid,
      this.favoriteItemsid,
      this.itemsId,
      this.itemsNameEn,
      this.itemsNameAr,
      this.itemsDescriptionEn,
      this.itemsDescriptionAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsDate,
      this.itemsCatrgories,
      this.usersId});

 MyFavoriteModel.fromJson(Map<String, dynamic> json) {
    favoriteId = json['favorite_id'];
    favoriteUsersid = json['favorite_usersid'];
    favoriteItemsid = json['favorite_itemsid'];
    itemsId = json['items_id'];
    itemsNameEn = json['items_name_en'];
    itemsNameAr = json['items_name_ar'];
    itemsDescriptionEn = json['items_description_en'];
    itemsDescriptionAr = json['items_description_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscount = json['items_discount'];
    itemsDate = json['items_date'];
    itemsCatrgories = json['items_catrgories'];
    usersId = json['users_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['favorite_id'] = this.favoriteId;
    data['favorite_usersid'] = this.favoriteUsersid;
    data['favorite_itemsid'] = this.favoriteItemsid;
    data['items_id'] = this.itemsId;
    data['items_name_en'] = this.itemsNameEn;
    data['items_name_ar'] = this.itemsNameAr;
    data['items_description_en'] = this.itemsDescriptionEn;
    data['items_description_ar'] = this.itemsDescriptionAr;
    data['items_image'] = this.itemsImage;
    data['items_count'] = this.itemsCount;
    data['items_active'] = this.itemsActive;
    data['items_price'] = this.itemsPrice;
    data['items_discount'] = this.itemsDiscount;
    data['items_date'] = this.itemsDate;
    data['items_catrgories'] = this.itemsCatrgories;
    data['users_id'] = this.usersId;
    return data;
  }
}