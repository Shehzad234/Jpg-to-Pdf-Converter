import '/utils/show_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:folder_file_saver/folder_file_saver.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:share_plus/share_plus.dart';

class ConvertedViewModel extends ChangeNotifier {
  bool savedAnimationFlag = false;
  String? pdfPath;
  sharePdfFile(String pdfFilePath) => Share.shareXFiles([XFile(pdfFilePath)]);

  savePdfFile(String pdfFilePath) async {
    pdfPath = await FolderFileSaver.saveFileToFolderExt(pdfFilePath);
    pdfPath = pdfPath!.split("/0/").last;
    savedAnimationFlag = true;
    showMessage("Sucessfully Saved");
    notifyListeners();
  }

  openPdfFile(String pdfFilePath) => OpenFile.open(pdfFilePath);

  savedAnimationFlagFalse() {
    savedAnimationFlag = false;
  }
}
