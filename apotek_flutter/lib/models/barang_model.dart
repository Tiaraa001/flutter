class BarangModel {
  bool? success;
  String? message;
  List<Data>? data;

  BarangModel({required this.success, required this.message, required this.data});

  BarangModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? idKategori;
  String? namaBarang;
  int? idSatuan;
  int? harga;

  Data({required this.idKategori, required this.namaBarang, required this.idSatuan, required this.harga});

  Data.fromJson(Map<String, dynamic> json) {
    idKategori = json['id_kategori'];
    namaBarang = json['nama_barang'];
    idSatuan = json['id_satuan'];
    harga = json['harga'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_kategori'] = this.idKategori;
    data['nama_barang'] = this.namaBarang;
    data['id_satuan'] = this.idSatuan;
    data['harga'] = this.harga;
    return data;
  }
}
