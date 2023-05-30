import 'package:hamil_sehat/app/data/gerakan_nifas_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

void insertInitialData() {
  Hive.openBox('gerakanNifases');
  final box = Hive.box('gerakanNifases');

  box.put(
    'nifas0',
    GerakanNifasModel(
      title: "Olah Napas",
      description:
          "Pada hari pertama, gerakan senam nifas dilakukan secara sederhana. Yaitu dengan melakukan latihan pernapasan. Ibu berbaring dengan nyaman di tempat yang datar, lalu melakukan tarik napas dalam, tahan napas dalam hitungan ke 5 atau hitung sampai 8, setelah itu keluarkan secara perlahan.",
      media: "https://youtu.be/bZvmzAhFZu8",
      isFavourite: false,
    ),
  );

  box.put(
    'nifas1',
    GerakanNifasModel(
      title: "Tangan Membuka Dan Menutup",
      description:
          "Pada hari kedua, gerakan mulai ditingkatkan. Posisi ibu masih sama, yaitu berbaring pada tempat yang datar dan aman. Lebarkan kedua tangan ibu sampai sejajar dengan bahu, lalu gerakan dengan lurus kedua tangan sampai bertemu di atas kepala. Lakukan latihan ini sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/Rd96mxVYa2Y",
    ),
  );

  box.put(
    'nifas2',
    GerakanNifasModel(
        title: "Gerak Pantat",
        description:
            "Pada hari ketiga, posisi dilakukan dengan berbaring, namun telapak kaki menyentuh lantai. Sehingga lutut akan tampak seperti ditekuk. Angkat pantat keatas, lalu tahan dan hitung sampai 3 atau 5, turunkan pantat secara perlahan. Lakukan latihan ini sebanyak 5 sampai 10 kali gerakan.",
        isFavourite: false,
        media: "https://youtu.be/NAI_SP7-2zc"),
  );

  box.put(
    'nifas3',
    GerakanNifasModel(
      title: "Gerak Atas",
      description:
          "Pada hari selanjutnya, yaitu menggerakan anggota badan bagian atas. Posisi tubuh terlentang, dengan telapak kaki menyentuh lantai, dan lutut ditekuk dengan sudut 45 derajat. Lalu gunakan satu tangan untuk memegang perut. Angkat tubuh ke atas dangan sudut kurang lebih 45 derajat, lalu tahan sampai hitungan ke 3 atau 5. Lalu turunkan secara perlahan. Lakukan gerakan ini sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/npQRfBFXJvQ",
    ),
  );

  box.put(
    'nifas4',
    GerakanNifasModel(
      title: "Gerak Atas Dan Tangan",
      description:
          "Pada hari kelima gerakan dilakukan dengan posisi terlentang. Tekuk salah satu kaki dengan sudut 45 derajat, lalu angkat tubuh serta tangan yang berlawanan. Jika lutut yang ditekuk sebelah kiri, maka tangan yang digunakan yaitu sebelah kanan (begitu juga sebaliknya). Usahakan tangan yang berlawanan, mampu menyentuh lutut yang ditekuk. Lakukan gerakan ini secara bergantian, sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/tJZT_E2YM6Y",
    ),
  );

  box.put(
    'nifas5',
    GerakanNifasModel(
      title: "Gerak Tekuk Kaki",
      description:
          "Pada hari keenam, latihan dilanjutkan kebagian anggota gerak bawah. Posisi dilakukan dengan berbaring (terlentang), tekuk lutut sampai membetuk sudut lurus ke atas (sudut 90 derajat). Lakukan gerakan ini secara bergantian antara kaki kiri dan kaki kanan. Latihan gerak ini, dilakukan sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/buPfii7kLNY",
    ),
  );

  box.put(
    'nifas6',
    GerakanNifasModel(
      title: "Gerak Angkat Kaki",
      description:
          "Pada hari ketujuh, pergerakan dilanjutkan dengan mengangkat kaki ke atas. Posisi tubuh terbaring (terlentang) pada tempat datar dan aman. Angkat kaki ke atas kurang lebih setinggi 20 cm sampai 30 cm. Turunkan secara perlahan, dan lakukan secara bergantian antara kaki kiri dengan kaki yang kanan. Gerakan ini dilakukan sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/LL-ZBB7Wjzo",
    ),
  );

  box.put(
    'nifas7',
    GerakanNifasModel(
      title: "Gerak Perut",
      description:
          "Pada hari ke delapan, posisi sudah tidak berbaring lagi. Dimana posisi tubuh tampak seperti bayi yang merangkak. Angkat perut ibu ke atas dan kebawah (gerakan dilakukan hanya otot perut saja), lakukan gerakan ini sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/ICtEdJC5l6Y",
    ),
  );

  box.put(
    'nifas8',
    GerakanNifasModel(
      title: "Angkat 2 Kaki",
      description:
          "Pada hari ke sembilan, posisi tubuh kembali terlentang. Rapatkan kedua kaki, lalu angkat kedua kaki secara bersamaan dengan sudut lurus atau membentuk sudut 90 derajat. Turunkan kedua kaki kebawah secara perlahan, dan lakukan gerakan ini sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/i9PrG7QM-HA",
    ),
  );

  box.put(
    'nifas9',
    GerakanNifasModel(
      title: "Gerak Sit-Up",
      description:
          "Pada hari terakhir senam nifas, yaitu gerakan sit –up. Mula-mula tubuh pada posisi terlentang, taruh kedua tangan dibawah kepala, dan angkat tubuh sampai membentuk posisi duduk. Lakukan gerakan ini sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/GVEHQ24jTpQ",
    ),
  );
}
