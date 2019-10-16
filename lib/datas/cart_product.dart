import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loja_virtual/datas/product_data.dart';

class CartProduct {
  String cid,category,pid,size;
  int quantity;

  ProductData productData;

  CartProduct.fromDocument(DocumentSnapshot document){
    cid = document.documentID;
    pid = document.data["pid"];
    quantity = document.data["quantity"];
    size = document.data["size"];
  }
  Map<String,dynamic> toMap() {
    return {
      "category": category,
      "pid": pid,
      "quantity": quantity,
      "size": size,
      "product": productData.toResumeMap(),
    };
  }

}