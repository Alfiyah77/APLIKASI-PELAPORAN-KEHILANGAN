class Report {
  final String namaPelapor;
  final String namaBarang;
  final String pathFoto;
  final String kronologi;
  final String nomor;
  final String waktu;
  final String update;

  Report({
    required this.namaBarang,
    required this.namaPelapor,
    required this.pathFoto,
    required this.kronologi,
    required this.waktu,
    required this.nomor,
    required this.update,
  });
}

var reportList = [
  Report(
    namaBarang: 'Tas Ransel',
    namaPelapor: 'Udin',
    pathFoto: 'assets/tas.jpg',
    kronologi:
        'Tas aku ketinggalan di ruang A pas selesai kelas pada jam 11.30',
    waktu: '1 Jam Yang Lalu',
    nomor: '089123456789',
    update: 'Sudah ditemukan',
  ),
  Report(
    namaBarang: 'HP iPhone 13 Pro Max',
    namaPelapor: 'Ahmad',
    pathFoto: 'assets/iphone13.jpg',
    kronologi:
        'HP hilang kayaknya jatuh di gedung C pas selesai sekitar jam 9 an',
    waktu: '2 Jam Yang Lalu',
    nomor: '089123456789',
    update: '',
  ),
];
