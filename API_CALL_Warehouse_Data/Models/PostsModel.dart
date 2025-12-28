/// WarehouseList : [{"CompanyID":"06","Buyer":"Decathlon","Year1":893080.0,"Year2":7024.0,"Year3":6853.0,"Year3Plus":0.0,"Total3Years":906957.0},{"CompanyID":"06","Buyer":"RalphLauren","Year1":476362.0,"Year2":10842.0,"Year3":4405.0,"Year3Plus":0.0,"Total3Years":491609.0},{"CompanyID":"06","Buyer":"Kmart Australia","Year1":453268.0,"Year2":0.0,"Year3":110.0,"Year3Plus":0.0,"Total3Years":453378.0},{"CompanyID":"06","Buyer":"H&M","Year1":355222.0,"Year2":2137.0,"Year3":876.0,"Year3Plus":0.0,"Total3Years":358235.0},{"CompanyID":"06","Buyer":"PRIMARK","Year1":333144.0,"Year2":6592.0,"Year3":818.0,"Year3Plus":0.0,"Total3Years":340554.0},{"CompanyID":"06","Buyer":"Decor (Target USA)","Year1":247504.0,"Year2":42270.0,"Year3":34194.0,"Year3Plus":0.0,"Total3Years":323968.0},{"CompanyID":"06","Buyer":"Carter’s | OshKosh B’gosh","Year1":259933.0,"Year2":18419.0,"Year3":4647.0,"Year3Plus":0.0,"Total3Years":282999.0},{"CompanyID":"06","Buyer":"CROSSLINE SAS FRANCE","Year1":136889.0,"Year2":1592.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":138481.0},{"CompanyID":"06","Buyer":"PROMOD","Year1":77918.0,"Year2":0.0,"Year3":167.0,"Year3Plus":0.0,"Total3Years":78085.0},{"CompanyID":"06","Buyer":"BENETTON","Year1":53787.0,"Year2":92.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":53879.0},{"CompanyID":"06","Buyer":"ZARA KIDS","Year1":34229.0,"Year2":0.0,"Year3":2714.0,"Year3Plus":0.0,"Total3Years":36943.0},{"CompanyID":"06","Buyer":"DUNNES STORES","Year1":14646.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":14646.0},{"CompanyID":"06","Buyer":"JSPACE LIMITED (OAKLEY)","Year1":7837.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":7837.0},{"CompanyID":"06","Buyer":"Boohoo","Year1":4980.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":4980.0},{"CompanyID":"06","Buyer":"WE","Year1":2996.0,"Year2":70.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":3066.0},{"CompanyID":"06","Buyer":"Pull & Bear","Year1":2054.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":2054.0},{"CompanyID":"06","Buyer":"ZARA","Year1":1879.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":1879.0},{"CompanyID":"06","Buyer":"Northern Apparel Ltd.","Year1":1207.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":1207.0},{"CompanyID":"06","Buyer":"ARBELLA FASHION LTD.","Year1":385.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":385.0},{"CompanyID":"06","Buyer":"JSPACE LIMITED (NORTH SAILS)","Year1":146.0,"Year2":0.0,"Year3":0.0,"Year3Plus":0.0,"Total3Years":146.0}]
/// tQtyStockAging : 3501288.0
/// tQtyStockGTh1yr : 143822.0

class PostsModel {
  PostsModel({List<WarehouseList>? warehouseList, num? tQtyStockAging,num? tQtyStockGTh1yr,}){
    _warehouseList = warehouseList;
    _tQtyStockAging = tQtyStockAging;
    _tQtyStockGTh1yr = tQtyStockGTh1yr;
}

  PostsModel.fromJson(dynamic json) {
    if (json['WarehouseList'] != null) {
      _warehouseList = [];
      json['WarehouseList'].forEach((v) {
        _warehouseList?.add(WarehouseList.fromJson(v));
      });
    }
    _tQtyStockAging = json['tQtyStockAging'];
    _tQtyStockGTh1yr = json['tQtyStockGTh1yr'];
  }

  List<WarehouseList>? _warehouseList;
  num? _tQtyStockAging;
  num? _tQtyStockGTh1yr;

PostsModel copyWith({  List<WarehouseList>? warehouseList, num? tQtyStockAging, num? tQtyStockGTh1yr,}) =>
    PostsModel(warehouseList:warehouseList??_warehouseList, tQtyStockAging: tQtyStockAging ?? _tQtyStockAging,
      tQtyStockGTh1yr: tQtyStockGTh1yr ?? _tQtyStockGTh1yr,);
  List<WarehouseList>? get warehouseList => _warehouseList;
  num? get tQtyStockAging => _tQtyStockAging;
  num? get tQtyStockGTh1yr => _tQtyStockGTh1yr;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_warehouseList != null) {
      map['WarehouseList'] = _warehouseList?.map((v) => v.toJson()).toList();
    }
    map['tQtyStockAging'] = _tQtyStockAging;
    map['tQtyStockGTh1yr'] = _tQtyStockGTh1yr;
    return map;
  }
}

/// CompanyID : "06"
/// Buyer : "Decathlon"
/// Year1 : 893080.0
/// Year2 : 7024.0
/// Year3 : 6853.0
/// Year3Plus : 0.0
/// Total3Years : 906957.0

class WarehouseList {
  WarehouseList({
      String? companyID, 
      String? buyer, 
      num? year1, 
      num? year2, 
      num? year3, 
      num? year3Plus, 
      num? total3Years,}){
    _companyID = companyID;
    _buyer = buyer;
    _year1 = year1;
    _year2 = year2;
    _year3 = year3;
    _year3Plus = year3Plus;
    _total3Years = total3Years;
}

  WarehouseList.fromJson(dynamic json) {
    _companyID = json['CompanyID'];
    _buyer = json['Buyer'];
    _year1 = json['Year1'];
    _year2 = json['Year2'];
    _year3 = json['Year3'];
    _year3Plus = json['Year3Plus'];
    _total3Years = json['Total3Years'];
  }
  String? _companyID;
  String? _buyer;
  num? _year1;
  num? _year2;
  num? _year3;
  num? _year3Plus;
  num? _total3Years;
WarehouseList copyWith({  String? companyID,String? buyer, num? year1, num? year2,
  num? year3, num? year3Plus, num? total3Years,}) => WarehouseList(
  companyID: companyID ?? _companyID,
  buyer: buyer ?? _buyer,
  year1: year1 ?? _year1,
  year2: year2 ?? _year2,
  year3: year3 ?? _year3,
  year3Plus: year3Plus ?? _year3Plus,
  total3Years: total3Years ?? _total3Years,
);
  String? get companyID => _companyID;
  String? get buyer => _buyer;
  num? get year1 => _year1;
  num? get year2 => _year2;
  num? get year3 => _year3;
  num? get year3Plus => _year3Plus;
  num? get total3Years => _total3Years;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['CompanyID'] = _companyID;
    map['Buyer'] = _buyer;
    map['Year1'] = _year1;
    map['Year2'] = _year2;
    map['Year3'] = _year3;
    map['Year3Plus'] = _year3Plus;
    map['Total3Years'] = _total3Years;
    return map;
  }
}


