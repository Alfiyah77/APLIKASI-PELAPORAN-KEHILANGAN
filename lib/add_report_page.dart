import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddReportPage extends StatefulWidget {
  const AddReportPage({super.key});

  @override
  State<AddReportPage> createState() => _AddReportPageState();
}

class _AddReportPageState extends State<AddReportPage> {
  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        title: const Text(
          'Tambah Laporan Kehilangan',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          reportForm(kWidth),
        ],
      ),
    );
  }

  Widget reportForm(kWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kWidth / 20,
        vertical: kWidth / 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: kWidth / 25),
            child: Text(
              "Nama Pelapor",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: kWidth / 25),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: kWidth / 20),
              hintStyle: TextStyle(fontSize: kWidth / 28),
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: 'Masukkan nama kamu',
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kWidth / 25),
            child: Text(
              "Nama Barang",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: kWidth / 25),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: kWidth / 20),
              hintStyle: TextStyle(fontSize: kWidth / 28),
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: 'Masukkan nama barang yang hilang',
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kWidth / 25),
            child: Text(
              "Kronologi",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: kWidth / 25),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            maxLines: 6,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(kWidth / 20),
              hintStyle: TextStyle(fontSize: kWidth / 28),
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: 'Ceritakan dimana dan kapan terjadinya barang hilang',
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kWidth / 25),
            child: Text(
              "Nomor HP yang bisa dihubungi",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: kWidth / 25),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(kWidth / 20),
              hintStyle: TextStyle(fontSize: kWidth / 28),
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: 'Masukkan nomor HP kamu',
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: kWidth / 20,
          ),
          SizedBox(
            width: kWidth,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {},
              child: Text(
                'Kirim',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: kWidth / 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
