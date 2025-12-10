class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;
  String category;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
    required this.category,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Gedung Miring Unsika',
    location: 'Telukjambe, Karawang',
    description:
    'Berada di Kampus Terbaik Di Alam Semesta yaitu Universitas Singaperbangsa Karawang. Selalu menjadi bahan perbincangan mahasiswa Fasilkom. Ketika anda melewati kawasan ini, anda akan mencium aura korupsi yang sangat kuat. Hanya Allah yang tau akhir dari nasib gedung ini.',
    openDays: 'Setiap Hari',
    openTime: '24 Jam Nonstop',
    ticketPrice: 'Gratis',
    imageAsset: 'images/gedung_miring_unsika.jpg',
    imageUrls: [
      'https://karawangpos.com/wp-content/uploads/2021/04/fslkm.jpg',
      'https://i0.wp.com/www.faktajabar.co.id/wp-content/uploads/2019/09/Gedung-Fasilkom_1.jpeg?fit=1036%2C492&ssl=1&resize=350%2C200',
      'https://i0.wp.com/www.faktajabar.co.id/wp-content/uploads/2022/07/IMG-20220713-WA0040.jpg?fit=1200%2C900&ssl=1&resize=350%2C200',
    ],
    category: 'Tak Dikenal',
  ),

  TourismPlace(
    name: 'Curug Cigentis',
    location: 'Tegalwaru, Karawang',
    description:
    'Curug Cigentis adalah air terjun dengan ketinggian sekitar 30 meter yang dikelilingi oleh hutan lebat. Tempat ini menawarkan keindahan alam yang asri dan cocok untuk hiking.',
    openDays: 'Setiap hari',
    openTime: '08:00 - 17:00 WIB',
    ticketPrice: 'Rp15.000',
    imageAsset: 'images/Curug_Cigentis.jpg',
    imageUrls: [
      'https://min.co.id/wp-content/uploads/2024/02/500-2.jpg',
      'https://mediaseruni.id/wp-content/uploads/elementor/thumbs/curug-cigentis-qpld0csb09t8v2lebvtmxz2scpj0owzugudbo9jrcg.jpg',
      'https://ik.imagekit.io/tvlk/blog/2024/07/A7rMKrdi-shutterstock_2282646145.jpg?tr=c-at_max?tr=c-at_max',
    ],
    category: 'Curug',
  ),

  TourismPlace(
    name: 'Pantai Tanjung Baru',
    location: 'Telukjambe, Karawang',
    description:
    'Pantai ini menawarkan pasir putih dan ombak yang tenang, cocok untuk menikmati matahari terbenam dan beraktivitas di tepi laut.',
    openDays: 'Setiap Hari',
    openTime: '08:00 - 18:00 WIB',
    ticketPrice: 'Rp10.000',
    imageAsset: 'images/Pantai_Tanjung_Baru.jpg',
    imageUrls: [
      'https://asset-2.tstatic.net/tribunnewswiki/foto/bank/images/Pantai-Tanjung-Baru-di-Karawang.jpg',
      'https://www.pesisir.net/wp-content/uploads/2021/12/Alamat-Wisata-Pantai-Tanjung-Baru.jpg',
      'https://i.pinimg.com/736x/d6/a9/65/d6a9653caa7c678e3306aab48cff93e2.jpg',
    ],
    category: 'Pantai',
  ),

  TourismPlace(
    name: 'Vihara Sian Djin Ku Poh',
    location: 'Tegalwaru, Karawang',
    description:
    'Vihara ini merupakan tempat ibadah dengan arsitektur khas Tionghoa dan penuh dengan nilai sejarah serta budaya.',
    openDays: 'Setiap Hari',
    openTime: '08:00 - 16:00 WIB',
    ticketPrice: 'Donasi Sukarela',
    imageAsset: 'images/Vihara.jpg',
    imageUrls: [
      'https://assets-a1.kompasiana.com/items/album/2021/04/13/photo-2021-04-13-18-43-35-6075844f8ede48141f526cb2.jpg',
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/Vihara-Sian-Djin-Ku-Poh.jpg',
      'https://www.karawangkab.go.id/sites/default/files/berita/WhatsApp%20Image%202018-08-23%20at%2011.24.20.jpeg',
    ],
    category: 'Tempat Ibadah',
  ),

  TourismPlace(
    name: 'Situ Kamojing',
    location: 'Kamojing, Karawang',
    description:
    'Danau buatan yang dikelilingi pepohonan hijau, tempat yang sempurna untuk beristirahat dan menikmati suasana alam.',
    openDays: 'Setiap Hari',
    openTime: '08:00 - 17:00 WIB',
    ticketPrice: 'Rp10.000',
    imageAsset: 'images/Situ_Kamojing.jpg',
    imageUrls: [
      'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/giwangkara/2020/12/Situ-Kamojing-Objek-Wisata-di-Karawang.jpg',
      'https://s1-id.alongwalker.co/wp-content/uploads/2024/07/image-top-10-gambar-situ-kamojing-karawang-sejarah-legenda-lokasi-alamat-misteri-mitos-hotel-di-sekitar-9cc1a41621e7b6ab2224c4f1b3757f7e.jpg',
      'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/06/23/Picsart_23-06-23_14-06-17-716-2508097148.jpg',
    ],
    category: 'Danau',
  ),

  TourismPlace(
    name: 'Monumen Kebulatan Tekad Rengasdengklok',
    location: 'Rengasdengklok, Karawang',
    description:
    'Monumen sejarah yang merupakan tempat penting dalam perjuangan kemerdekaan Indonesia, tempat para pemuda menyuarakan proklamasi.',
    openDays: 'Setiap Hari',
    openTime: '08:00 - 16:00 WIB',
    ticketPrice: 'Gratis',
    imageAsset: 'images/Monumen_Kebulatan.jpeg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwfl2Z4pIJN9UujSL-1xa3bOPcpN5-hkcAwg&s',
      'https://asset-2.tstatic.net/tribunnewswiki/foto/bank/images/1-Monumen-Kebulatan-Tekad.jpg',
      'https://asset.kompas.com/crops/XCJk074pnZwcrROHQ3crDCa_0Iw=/136x0:1069x622/750x500/data/photo/2019/08/13/5d523a87b6024.jpg',
    ],
    category: 'Monumen',
  ),

  TourismPlace(
    name: 'Candi Jiwa',
    location: 'Batujaya, Karawang',
    description:
    'Candi Jiwa adalah situs arkeologi dari masa Kerajaan Tarumanegara yang memiliki nilai sejarah tinggi. Tempat ini cocok untuk pecinta sejarah dan arkeologi.',
    openDays: 'Setiap Hari',
    openTime: '08:00 - 16:00 WIB',
    ticketPrice: 'Donasi Sukarela',
    imageAsset: 'images/Candi_Jiwa.jpg',
    imageUrls: [
      'https://disparbud.jabarprov.go.id/wp-content/uploads/2023/03/photo_2023-03-11_06-24-49.jpg',
      'https://turisian.com/wp-content/uploads/2022/05/Candi-Jiwa-Karawang.jpg',
      'https://news.karawang.center/wp-content/uploads/2020/08/karawang-center-candi-batujaya.jpg',
    ],
    category: 'Candi',
  ),

  TourismPlace(
    name: 'Kampung Budaya',
    location: 'Telukjambe, Karawang',
    description:
    'Kampung Budaya Karawang adalah destinasi wisata budaya yang menampilkan seni tradisional, bangunan khas, dan kegiatan budaya lokal. Tempat ini cocok untuk belajar dan menikmati kebudayaan Karawang.',
    openDays: 'Setiap Hari',
    openTime: '08:00 - 18:00 WIB',
    ticketPrice: 'Rp15.000',
    imageAsset: 'images/Kampung_Budaya.jpeg',
    imageUrls: [
      'https://assets.kompasiana.com/items/album/2016/10/11/img-20161009-151235-hdr-57fcd05d92fdfd3715595655.jpg?t=o&v=325',
      'https://i3.wp.com/media.suara.com/suara-partners/purwasuka/thumbs/970x545/2022/08/16/1-kampung-budaya-karawang.jpg?ssl=1',
      'https://assets-a1.kompasiana.com/items/album/2016/10/11/img-20161009-153121-hdr-57fccf7092fdfda31459565b.jpg',
    ],
    category: 'Kampung',
  ),

  TourismPlace(
    name: 'Bukit Cinta Karawang',
    location: 'Tegalwaru, Karawang',
    description:
    'Bukit Cinta menawarkan pemandangan alam yang indah dan cocok untuk berfoto dengan latar belakang bukit hijau dan taman yang asri.',
    openDays: 'Setiap Hari',
    openTime: '08:00 - 17:00 WIB',
    ticketPrice: 'Rp10.000',
    imageAsset: 'images/Bukit.jpg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2022/01/10/wisata-jembatan-cinta-di-karawang_169.jpeg?w=600&q=90',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcN1Ulpa4d2cdvvPnatDdZUJP2l5yIQSRdE0lWRZHzlCOF_65uZOkhpXAYdzPR4P-rZrg&usqp=CA...',
    ],
    category: 'Bukit',
  ),

  TourismPlace(
    name: 'Kampung Turis',
    location: 'Tegalwaru, Karawang',
    description: 'Kampung Turis Karawang adalah destinasi wisata yang terletak di Kampung Parakan Badak, Desa Mekarbuana, Kecamatan Tegalwaru, Karawang, Jawa Barat. Tempat ini sangat cocok untuk liburan keluarga dengan berbagai fasilitas yang tersedia, seperti waterpark, restoran, villa penginapan, dan area rekreasi yang menyenangkan.',
    openDays: 'Setiap Hari',
    openTime: '09.00-17.00',
    ticketPrice: 'Rp25.000',
    imageAsset: 'images/Kampung_Turis.jpeg',
    imageUrls: [
      'https://awsimages.detik.net.id/community/media/visual/2023/11/06/lanscape-area-villa-kampung-turis-karawang.jpeg?w=800',
      'https://news.karawang.center/wp-content/uploads/2020/09/abil-062-min.png',
      'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p2/22/2024/07/08/adASFSDHDFJ-1196206817.jpg',
    ],
    category: 'Kampung',
  ),
];