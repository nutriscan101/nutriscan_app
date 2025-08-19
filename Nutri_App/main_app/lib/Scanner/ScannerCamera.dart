import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/HomePageAll/HomePage.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

class ScannerCamera extends StatefulWidget {
  const ScannerCamera({super.key});

  @override
  State<ScannerCamera> createState() => ScannerCamerastate();
}

class ScannerCamerastate extends State<ScannerCamera> {
  List<CameraDescription> cameras = [];
  CameraController? cameraController;

  @override
  void initState() {
    super.initState();
    _setupcameracontroller();
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  Future<void> _setupcameracontroller() async {
    final _cameras = await availableCameras();
    if (_cameras.isNotEmpty) {
      cameras = _cameras;
      cameraController = CameraController(
        _cameras.first,
        ResolutionPreset.high,
      );

      await cameraController!.initialize();
      if (mounted) {
        setState(() {});
      }
    }
  }

  Widget _buildUi() {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    if (cameraController == null || !cameraController!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: screenheight * 0.04,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Container(
            width: screenwidth,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenheight * 0.07),
                Text(
                  'Scanner',
                  style: TextStyle(
                    fontSize: screenwidth * 0.12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenheight * 0.07),
                Text(
                  'Scan Barcode From Product',
                  style: GoogleFonts.poppins(
                    fontSize: screenwidth * 0.05,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: screenheight * 0.02),
                SizedBox(
                  height: screenheight * 0.25,
                  width: screenwidth * 0.9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CameraPreview(cameraController!),
                  ),
                ),
                SizedBox(height: screenheight * 0.15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Choose From Gallery',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: screenwidth,
          color: Colors.white,
          child: _buildUi(),
        ),
      ),
    );
  }
}
