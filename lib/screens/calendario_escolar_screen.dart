import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CalendarioEscolarScreen extends StatefulWidget {
  const CalendarioEscolarScreen({super.key});
  static const String routeName = "/CalendarioEscolarScreen";

  @override
  State<CalendarioEscolarScreen> createState() =>
      _CalendarioEscolarScreenState();
}

class _CalendarioEscolarScreenState extends State<CalendarioEscolarScreen> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        //appBar: AppBar(title: Text('Calendario')),
        body: Column(
          children: [
            Text(
              'UACM',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Colors.red,
                fontStyle: FontStyle.italic,
              ),
            ),

            Expanded(
              child: SfPdfViewer.asset(
                controller: _pdfViewerController,

                'assets/pdfs/calendario.pdf',
                pageSpacing: 0,
                pageLayoutMode: PdfPageLayoutMode.single,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
