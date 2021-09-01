import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
import 'package:permission_handler/permission_handler.dart';
// import 'package:path_provider/path_provider.dart';

class TempScreen extends StatefulWidget {
  const TempScreen({Key? key}) : super(key: key);

  @override
  _TempScreenState createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sifu"),
        actions: [
          IconButton(
            onPressed: () {
              getPermission();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

void getPermission() async {
  var cameraPermission = await Permission.camera.isGranted;
  if (cameraPermission) {
    await Permission.camera.request();
  }
  print(cameraPermission);
  // var status = await Permission.contacts.status;
  // if (status.isPermanentlyDenied) {
  //   print("isPermanentlyDenied");

  //   // You can request multiple permissions at once.
  //   // Map<Permission, PermissionStatus> statuses = await [
  //   //   Permission.contacts,

  //   // ].request();
  //   // print(
  //   //   statuses[Permission.contacts],
  //   // ); // it should print PermissionStatus.granted
  // } else {
  //   print("asdasd");
  // }
}

void createPdf() async {
  // final pdf = pw.Document();

  // pdf.addPage(
  //   pw.Page(
  //     pageFormat: PdfPageFormat.a4,
  //     build: (pw.Context context) {
  //       return pw.Center(
  //         child: pw.Text("Hello World"),
  //       ); // Center
  //     },
  //   ),
  // );

  // On Flutter, use the [path_provider](https://pub.dev/packages/path_provider) library:
//   final output = await getTemporaryDirectory();
//   final file = File("${output.path}/example.pdf");

  // else if (status.isGranted) {
  //   Directory documents = await getApplicationDocumentsDirectory();
  //   File file = File("${documents.path}/${DateTime.now()}");
  //   await file.writeAsBytes(await pdf.save());
  // }
}
