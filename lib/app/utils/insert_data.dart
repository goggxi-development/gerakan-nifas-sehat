import 'package:hamil_sehat/app/data/gerakan_nifas_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

const String gerakanNifasAll = 'Gerakan Nifas Sehat 1 - 10';

void insertInitialData() {
  Hive.openBox('gerakanNifases');
  final box = Hive.box('gerakanNifases');

  box.put(
    'nifas0',
    GerakanNifasModel(
      title: gerakanNifasAll,
      description: """
Cara melakukan gerakan senam nifas
Sebelum melakukan senam nifas, pastikan menggunakan pakaian yang longgar, agar tidak kesulitasn saat menggerakan anggota tubuh. pastikan juga untuk menyiapkan tempat yang aman. Berikut merupakan urutan latihan senam nifas.

1. Hari Pertama (Olah Napas)
Pada hari pertama, gerakan senam nifas dilakukan secara sederhana. Yaitu dengan melakukan latihan pernapasan. Ibu berbaring dengan nyaman di tempat yang datar, lalu melakukan tarik napas dalam, tahan napas dalam hitungan ke 5 atau hitung sampai 8, setelah itu keluarkan secara perlahan.
Lakukan latihan pernapasan tersebut, sebanyak 5 sampai 10 kali.
Manfaat : Setelah melahirkan peredaran darah dan pernafasan belum kembali normal. Latihan pernafasan ini ditujukan untuk memperlancar peredaran darah dan pernafasan. Seluruh organ-organ tubuh akan teroksigenasi dengan baik sehingga hal ini juga akan membantu proses pemulihan tubuh.

2. Hari Kedua (Tangan Membuka Dan Menutup)
Pada hari kedua, gerakan mulai ditingkatkan. Posisi ibu masih sama, yaitu berbaring pada tempat yang datar dan aman. Lebarkan kedua tangan ibu sampai sejajar dengan bahu, lalu gerakan dengan lurus kedua tangan sampai bertemu di atas kepala.
Lakukan latihan ini sebanyak 5 sampai 10 kali gerakan.
Manfaat : Latihan ini di tujukan untuk memulihakan dan menguatkan kembali otot-otot lengan.

3. Hari Ketiga (Gerak Pantat)
Pada hari ketiga, posisi dilakukan dengan berbaring, namun telapak kaki menyentuh lantai. Sehingga lutut akan tampak seperti ditekuk. Angkat pantat keatas, lalu tahan dan hitung sampai 3 atau 5, turunkan pantat secara perlahan.
Lakukan latihan ini sebanyak 5 sampai 10 kali gerakan.
Manfaat: Latihan ini di tujukan untuk menguatkan kembali otot-otot daar panggul yang sebelumnya otot-otot ini bekerja dengan keras selama kehamilan dan persalinan. Membantu mengatasi inkontensia urine atau sulit menahan buang air kecil 

4. Hari Keempat (Gerak Atas)
Pada hari selanjutnya, yaitu menggerakan anggota badan bagian atas. Posisi tubuh terlentang, dengan telapak kaki menyentuh lantai, dan lutut ditekuk dengan sudut 45 derajat. Lalu gunakan satu tangan untuk memegang perut.
Angkat tubuh ke atas dangan sudut kurang lebih 45 derajat, lalu tahan sampai hitungan ke 3 atau 5. Lalu turunkan secara perlahan. Lakukan gerakan ini sebanyak 5 sampai 10 kali.
Manfaat : Latihan ini bertujuan untuk melatih sekaligus otot-otot tubuh diantaranya otot-otot punggung, otot-otot bagian perut, dan otot-otot paha.

5. Hari Kelima (Gerak Atas Dan Tangan)
Pada hari kelima gerakan dilakukan dengan posisi terlentang. Tekuk salah satu kaki dengan sudut 45 derajat, lalu angkat tubuh serta tangan yang berlawanan. Jika lutut yang ditekuk sebelah kiri, maka tangan yang digunakan yaitu sebelah kanan (begitu juga sebaliknya).
Usahakan tangan yang berlawanan, mampu menyentuh lutut yang ditekuk. Lakukan gerakan ini secara bergantian, sebanyak 5 sampai 10 kali.
Manfaat : Latihan ini bertujuan untuk melatih sekaligus otot-otot tubuh diantaranya otot lengan dan kaki

6. Hari Keenam (Gerak Tekuk Kaki)
Pada hari keenam, latihan dilanjutkan kebagian anggota gerak bawah. Posisi dilakukan dengan berbaring (terlentang), tekuk lutut sampai membetuk sudut lurus ke atas (sudut 90 derajat). Lakukan gerakan ini secara bergantian antara kaki kiri dan kaki kanan.
Latihan gerak ini, dilakukan sebanyak 5 sampai 10 kali gerakan.
Manfaat : Latihan ini ditujukan untuk menguatkan otot-otot di kaki yang selama kehamilan menyangga beban yang berat. Selain itu untuk memperlancar sirkulasi di daerah kaki sehingga mengurangi resiko edema kaki.

7. Hari Ketujuh (Gerak Angkat Kaki)
Pada hari ketujuh, pergerakan dilanjutkan dengan mengangkat kaki ke atas. Posisi tubuh terbaring (terlentang) pada tempat datar dan aman. Angkat kaki ke atas kurang lebih setinggi 20 cm sampai 30 cm. Turunkan secara perlahan, dan lakukan secara bergantian antara kaki kiri dengan kaki yang kanan.
Gerakan ini dilakukan sebanyak 5 sampai 10 kali gerakan.
Manfaat : menguatkan otot otot di kaki dan melancarkan sirkulasi darah

8. Hari Kedelapan (Gerak Perut)
Pada hari ke delapan, posisi sudah tidak berbaring lagi. Dimana posisi tubuh tampak seperti bayi yang merangkak. Angkat perut ibu ke atas dan kebawah (gerakan dilakukan hanya otot perut saja), lakukan gerakan ini sebanyak 5 sampai 10 kali.
Manfaat : untuk menguatkan otot bagian perut dan memperbaiki sikap tubuh  dan  punggung ibu setelah melahirkan. Gerakan inipun membantu membebaskan bahu dan leher dari ketegangan sambal mengoptimalkan sirkulasi darah juga membantu meredakan ketegangan dibagian punggung, pinggul dan sekitar bokong.

9. Hari Kesembilan (Angkat 2 Kaki)
Pada hari ke sembilan, posisi tubuh kembali terlentang. Rapatkan kedua kaki, lalu angkat kedua kaki secara bersamaan dengan sudut lurus atau membentuk sudut 90 derajat. Turunkan kedua kaki kebawah secara perlahan, dan lakukan gerakan ini sebanyak 5 sampai 10 kali gerakan.
Manfaat : membawa oksigen ke bagian atas tubuh, yang berarti sirkulasi aliran darah meningkat. Selain itu, dapat membantu untuk menyeimbangkan tekanan darah.

10. Hari Kesepuluh (Gerak Sit-Up)
Pada hari terakhir senam nifas, yaitu gerakan sit –up. Mula-mula tubuh pada posisi terlentang, taruh kedua tangan dibawah kepala, dan angkat tubuh sampai membentuk posisi duduk. Lakukan gerakan ini sebanyak 5 sampai 10 kali.
Manfaat : Membangun kekuatan otot pada otot perut dan pinggul.
""",
      media: "https://youtu.be/F5jXCU7qVZk",
      isFavourite: false,
    ),
  );

  box.put(
    'nifas1',
    GerakanNifasModel(
      title: "Olah Napas",
      description:
          "Pada hari pertama, gerakan senam nifas dilakukan secara sederhana. Yaitu dengan melakukan latihan pernapasan. Ibu berbaring dengan nyaman di tempat yang datar, lalu melakukan tarik napas dalam, tahan napas dalam hitungan ke 5 atau hitung sampai 8, setelah itu keluarkan secara perlahan.",
      media: "https://youtu.be/bZvmzAhFZu8",
      isFavourite: false,
    ),
  );

  box.put(
    'nifas2',
    GerakanNifasModel(
      title: "Tangan Membuka Dan Menutup",
      description:
          "Pada hari kedua, gerakan mulai ditingkatkan. Posisi ibu masih sama, yaitu berbaring pada tempat yang datar dan aman. Lebarkan kedua tangan ibu sampai sejajar dengan bahu, lalu gerakan dengan lurus kedua tangan sampai bertemu di atas kepala. Lakukan latihan ini sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/Rd96mxVYa2Y",
    ),
  );

  box.put(
    'nifas3',
    GerakanNifasModel(
        title: "Gerak Pantat",
        description:
            "Pada hari ketiga, posisi dilakukan dengan berbaring, namun telapak kaki menyentuh lantai. Sehingga lutut akan tampak seperti ditekuk. Angkat pantat keatas, lalu tahan dan hitung sampai 3 atau 5, turunkan pantat secara perlahan. Lakukan latihan ini sebanyak 5 sampai 10 kali gerakan.",
        isFavourite: false,
        media: "https://youtu.be/NAI_SP7-2zc"),
  );

  box.put(
    'nifas4',
    GerakanNifasModel(
      title: "Gerak Atas",
      description:
          "Pada hari selanjutnya, yaitu menggerakan anggota badan bagian atas. Posisi tubuh terlentang, dengan telapak kaki menyentuh lantai, dan lutut ditekuk dengan sudut 45 derajat. Lalu gunakan satu tangan untuk memegang perut. Angkat tubuh ke atas dangan sudut kurang lebih 45 derajat, lalu tahan sampai hitungan ke 3 atau 5. Lalu turunkan secara perlahan. Lakukan gerakan ini sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/npQRfBFXJvQ",
    ),
  );

  box.put(
    'nifas5',
    GerakanNifasModel(
      title: "Gerak Atas Dan Tangan",
      description:
          "Pada hari kelima gerakan dilakukan dengan posisi terlentang. Tekuk salah satu kaki dengan sudut 45 derajat, lalu angkat tubuh serta tangan yang berlawanan. Jika lutut yang ditekuk sebelah kiri, maka tangan yang digunakan yaitu sebelah kanan (begitu juga sebaliknya). Usahakan tangan yang berlawanan, mampu menyentuh lutut yang ditekuk. Lakukan gerakan ini secara bergantian, sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/tJZT_E2YM6Y",
    ),
  );

  box.put(
    'nifas6',
    GerakanNifasModel(
      title: "Gerak Tekuk Kaki",
      description:
          "Pada hari keenam, latihan dilanjutkan kebagian anggota gerak bawah. Posisi dilakukan dengan berbaring (terlentang), tekuk lutut sampai membetuk sudut lurus ke atas (sudut 90 derajat). Lakukan gerakan ini secara bergantian antara kaki kiri dan kaki kanan. Latihan gerak ini, dilakukan sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/buPfii7kLNY",
    ),
  );

  box.put(
    'nifas7',
    GerakanNifasModel(
      title: "Gerak Angkat Kaki",
      description:
          "Pada hari ketujuh, pergerakan dilanjutkan dengan mengangkat kaki ke atas. Posisi tubuh terbaring (terlentang) pada tempat datar dan aman. Angkat kaki ke atas kurang lebih setinggi 20 cm sampai 30 cm. Turunkan secara perlahan, dan lakukan secara bergantian antara kaki kiri dengan kaki yang kanan. Gerakan ini dilakukan sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/LL-ZBB7Wjzo",
    ),
  );

  box.put(
    'nifas8',
    GerakanNifasModel(
      title: "Gerak Perut",
      description:
          "Pada hari ke delapan, posisi sudah tidak berbaring lagi. Dimana posisi tubuh tampak seperti bayi yang merangkak. Angkat perut ibu ke atas dan kebawah (gerakan dilakukan hanya otot perut saja), lakukan gerakan ini sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/ICtEdJC5l6Y",
    ),
  );

  box.put(
    'nifas9',
    GerakanNifasModel(
      title: "Angkat 2 Kaki",
      description:
          "Pada hari ke sembilan, posisi tubuh kembali terlentang. Rapatkan kedua kaki, lalu angkat kedua kaki secara bersamaan dengan sudut lurus atau membentuk sudut 90 derajat. Turunkan kedua kaki kebawah secara perlahan, dan lakukan gerakan ini sebanyak 5 sampai 10 kali gerakan.",
      isFavourite: false,
      media: "https://youtu.be/i9PrG7QM-HA",
    ),
  );

  box.put(
    'nifas10',
    GerakanNifasModel(
      title: "Gerak Sit-Up",
      description:
          "Pada hari terakhir senam nifas, yaitu gerakan sit –up. Mula-mula tubuh pada posisi terlentang, taruh kedua tangan dibawah kepala, dan angkat tubuh sampai membentuk posisi duduk. Lakukan gerakan ini sebanyak 5 sampai 10 kali.",
      isFavourite: false,
      media: "https://youtu.be/GVEHQ24jTpQ",
    ),
  );
}
