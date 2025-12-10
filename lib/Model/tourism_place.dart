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
];