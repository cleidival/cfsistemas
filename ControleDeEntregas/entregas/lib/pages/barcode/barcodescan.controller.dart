import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:get/get.dart';

class BarcodeScanController extends GetxController {
  var valorCodigoBarras = '';

  Future<void> scanBarcodeNow() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#FF6666', 'Cancelar', true, ScanMode.BARCODE);

    FlutterBeep.beep();

    if (barcodeScanRes == '-1') {
      Get.snackbar('Cancelado', 'Leitura cancelada');
    } else {
      valorCodigoBarras = barcodeScanRes;
      update();
    }
  }
}
