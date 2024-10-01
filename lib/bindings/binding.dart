import 'package:get/get.dart';
import 'package:tugas_aplikasi_musik/controller/library_controller.dart';

class MyBindings extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<LibraryController>(() => LibraryController());
  }
}