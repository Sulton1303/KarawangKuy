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

];