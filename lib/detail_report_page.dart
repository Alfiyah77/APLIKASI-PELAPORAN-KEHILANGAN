import 'package:flutter/material.dart';
import 'package:lapang_app/report/data.dart';

class DetailReportPage extends StatefulWidget {
  final Report report;
  const DetailReportPage({required this.report, super.key});

  @override
  State<DetailReportPage> createState() => _DetailReportPageState();
}

class _DetailReportPageState extends State<DetailReportPage> {
  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          widget.report.namaBarang,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          allWidget(kWidth),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        label: Text(
          'Tandai Sudah Ditemukan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: kWidth / 25,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget allWidget(kWidth) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          kWidth / 20, kWidth / 20, kWidth / 20, kWidth / 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.report.pathFoto,
            width: kWidth,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: kWidth / 20,
          ),
          widget.report.update != ''
              ? Container(
                  width: kWidth,
                  padding: EdgeInsets.all(kWidth / 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        kWidth / 40,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Update Laporan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: kWidth / 20,
                        ),
                      ),
                      SizedBox(
                        height: kWidth / 40,
                      ),
                      Divider(
                        color: Colors.black.withOpacity(.5),
                      ),
                      SizedBox(
                        height: kWidth / 40,
                      ),
                      Text(
                        widget.report.update,
                        style: TextStyle(
                          fontSize: kWidth / 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
          SizedBox(
            height: kWidth / 20,
          ),
          Container(
            width: kWidth,
            padding: EdgeInsets.all(kWidth / 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  kWidth / 40,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.report.namaPelapor,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: kWidth / 20,
                      ),
                    ),
                    Text(
                      widget.report.waktu,
                      style: TextStyle(
                        fontSize: kWidth / 25,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: kWidth / 40,
                ),
                Divider(
                  color: Colors.black.withOpacity(.5),
                ),
                SizedBox(
                  height: kWidth / 40,
                ),
                Text(
                  widget.report.kronologi,
                  style: TextStyle(
                    fontSize: kWidth / 20,
                  ),
                ),
                SizedBox(
                  height: kWidth / 40,
                ),
                Divider(
                  color: Colors.black.withOpacity(.5),
                ),
                SizedBox(
                  height: kWidth / 40,
                ),
                SizedBox(
                  width: kWidth,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {},
                    child: Text(
                      'Hubungi via WhatsApp',
                      style: TextStyle(
                        fontSize: kWidth / 22,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: kWidth,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {},
                    child: Text(
                      'Hubungi via Telepon',
                      style: TextStyle(
                        fontSize: kWidth / 22,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
