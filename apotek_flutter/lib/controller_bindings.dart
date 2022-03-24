import 'package:get/instance_manager.dart';

// import 'controllers/album_controller.dart';
import 'controllers/barang_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put<AlbumController>(AlbumController());
    Get.put<barangController>(barangController());
  }
}