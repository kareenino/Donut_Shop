
class DonutPage{
  String? imgUrl;
  String? logoimgUrl;

  DonutPage ({this.imgUrl, this.logoimgUrl});
}

class DonutModel {

  String? imgUrl;
  String? name;
  String? description;
  double? price;
  String? type;

  DonutModel({
    this.imgUrl,
    this.name,
    this.description,
    this.price,
    this.type
  });
}