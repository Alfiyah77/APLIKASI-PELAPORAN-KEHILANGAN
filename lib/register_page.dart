import 'package:flutter/material.dart';
import 'package:lapang_app/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    var kWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          allWidgets(kWidth),
        ],
      ),
    );
  }

  Widget allWidgets(kWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kWidth / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: kWidth / 2,
          ),
          Text(
            'Buat Akun',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: kWidth / 15,
            ),
          ),
          Text(
            'Silahkan isi semua kolom di bawah ini',
            style: TextStyle(
              fontSize: kWidth / 25,
            ),
          ),
          SizedBox(
            height: kWidth / 10,
          ),
          TextFormField(
            autofocus: false,
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              prefixIcon: Container(
                margin: EdgeInsets.only(right: kWidth / 25),
                height: kWidth / 10,
                width: kWidth / 8,
                child: Icon(
                  Icons.person,
                  fill: 1,
                  size: kWidth / 23,
                  color: Colors.black,
                ),
              ),
              constraints: BoxConstraints(
                  maxHeight: kWidth / 10, minHeight: kWidth / 10),
              contentPadding: EdgeInsets.only(left: kWidth / 20),
              hintStyle: TextStyle(fontSize: kWidth / 28),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Masukkan nama anda',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 10)),
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 10)),
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Harus diisi';
              }
              return null;
            },
          ),
          SizedBox(
            height: kWidth / 20,
          ),
          TextFormField(
            autofocus: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Container(
                margin: EdgeInsets.only(right: kWidth / 25),
                height: kWidth / 10,
                width: kWidth / 8,
                child: Icon(
                  Icons.email,
                  fill: 1,
                  size: kWidth / 23,
                  color: Colors.black,
                ),
              ),
              constraints: BoxConstraints(
                  maxHeight: kWidth / 10, minHeight: kWidth / 10),
              contentPadding: EdgeInsets.only(left: kWidth / 20),
              hintStyle: TextStyle(fontSize: kWidth / 28),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Masukkan email/username anda',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 10)),
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 10)),
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Harus diisi';
              }
              return null;
            },
          ),
          SizedBox(
            height: kWidth / 20,
          ),
          TextFormField(
            autofocus: false,
            obscureText: isVisible,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Container(
                margin: EdgeInsets.only(right: kWidth / 25),
                height: kWidth / 10,
                width: kWidth / 8,
                child: Icon(
                  Icons.key,
                  fill: 1,
                  size: kWidth / 23,
                  color: Colors.black,
                ),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: SizedBox(
                  height: kWidth / 10,
                  width: kWidth / 8,
                  child: Icon(
                    isVisible ? Icons.visibility_off : Icons.visibility,
                    fill: 1,
                    size: kWidth / 23,
                    color: Colors.black,
                  ),
                ),
              ),
              constraints: BoxConstraints(
                  maxHeight: kWidth / 10, minHeight: kWidth / 10),
              contentPadding: EdgeInsets.only(left: kWidth / 20),
              hintStyle: TextStyle(fontSize: kWidth / 28),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Masukkan password anda',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 10)),
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(kWidth / 10)),
                borderSide: const BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Harus diisi';
              }
              return null;
            },
          ),
          SizedBox(
            height: kWidth / 20,
          ),
          SizedBox(
            width: kWidth,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kWidth / 40),
                ),
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              child: Text(
                'Buat Akun',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: kWidth / 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Kembali',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
