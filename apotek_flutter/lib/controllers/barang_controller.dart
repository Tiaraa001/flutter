import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:apotek_flutter/services/barang_services.dart';

import '../models/barang_model.dart';

class barangController extends GetxController {
  var barangList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBarangData();
  }

  void fetchBarangData() async {
    try {
      isLoading(true);
      var barang = await BarangService.fetchBarangData();
      barangList.value = barang.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}