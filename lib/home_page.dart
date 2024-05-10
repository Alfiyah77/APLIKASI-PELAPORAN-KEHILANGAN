import 'package:flutter/material.dart';
import 'package:lapang_app/add_report_page.dart';
import 'package:lapang_app/detail_report_page.dart';
import 'package:lapang_app/login_page.dart';
import 'package:lapang_app/report/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddReportPage();
          }));
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        title: const Text(
          'Laporan Kehilangan',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: ListView(
          children: [
            searchBar(kWidth),
            lastUpdate(kWidth),
            for (int i = 0; i < reportList.length; i++) ...{
              reportCard(kWidth, reportList[i]),
            }
          ],
        ),
      ),
    );
  }

  Widget searchBar(kWidth) {
    return Padding(
      padding: EdgeInsets.all(kWidth / 20),
      child: TextFormField(
        autofocus: false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            height: kWidth / 10,
            width: kWidth / 8,
            child: Icon(
              Icons.search,
              fill: 1,
              size: kWidth / 20,
              color: Colors.black,
            ),
          ),
          constraints:
              BoxConstraints(maxHeight: kWidth / 10, minHeight: kWidth / 10),
          contentPadding: EdgeInsets.only(left: kWidth / 20),
          hintStyle: TextStyle(fontSize: kWidth / 28),
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: 'Cari laporan ...',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(kWidth / 10)),
            borderSide:
                BorderSide(color: Colors.black.withOpacity(.2), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(kWidth / 50)),
            borderSide:
                BorderSide(color: Colors.black.withOpacity(.2), width: 1.0),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Harus diisi';
          }
          return null;
        },
      ),
    );
  }

  Widget lastUpdate(kWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Data diperbarui 1 menit yang lalu',
            style:
                TextStyle(fontStyle: FontStyle.italic, fontSize: kWidth / 30),
          ),
        ],
      ),
    );
  }

  Widget reportCard(kWidth, Report report) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailReportPage(report: report);
        }));
      },
      child: Container(
        padding: EdgeInsets.all(kWidth / 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
                    width: 2.0, color: Colors.grey.withOpacity(.5)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    report.pathFoto,
                    width: kWidth / 4,
                    height: kWidth / 4,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  width: kWidth / 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Text(
                        report.namaBarang,
                        style: TextStyle(
                          fontSize: kWidth / 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kWidth / 50,
                    ),
                    SizedBox(
                      child: Text(
                        report.namaPelapor,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: kWidth / 25,
                            color: Colors.black.withOpacity(.5)),
                      ),
                    ),
                    SizedBox(
                      height: kWidth / 50,
                    ),
                    SizedBox(
                      width: kWidth / 1.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            report.waktu,
                            style: TextStyle(
                                fontSize: kWidth / 25,
                                fontStyle: FontStyle.italic,
                                color: Colors.black.withOpacity(.5)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
