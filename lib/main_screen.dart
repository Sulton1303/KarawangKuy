import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<TourismPlace> displayedPlaces = tourismPlaceList;
  String searchQuery = '';
  String selectedCategory = 'Semua';

  // Melakukan get data daftar tempat wisata dari tourism_place
  List<String> getCategories() {
    List<String> categories = ['Semua'];
    categories.addAll(tourismPlaceList
        .map((place) => place.category)
        .toSet()
        .where((category) => category.isNotEmpty));
    return categories;
  }

  // Melakukan filter tempat wisata berdasarkan kategori/jenis tempat wisata
  void _filterPlaces(String category) {
    setState(() {
      if (category == 'Semua') {
        displayedPlaces = tourismPlaceList
            .where((place) => place.name.toLowerCase().contains(searchQuery.toLowerCase()))
            .toList();
      } else {
        displayedPlaces = tourismPlaceList
            .where((place) =>
        place.category.toLowerCase() == category.toLowerCase() &&
            place.name.toLowerCase().contains(searchQuery.toLowerCase()))
            .toList();
      }
      selectedCategory = category;
    });
  }

  // Melakukan pencarian berdasarkan nama tempat wisata
  void _searchPlaces(String query) {
    setState(() {
      searchQuery = query;
      _filterPlaces(selectedCategory);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // Menentukan jumlah kolom berdasarkan lebar layar
    int crossAxisCount;
    if (screenWidth <= 480) {
      crossAxisCount = 2; // Untuk ukuran 0-25 % dari lebar layar
    } else if (screenWidth <= 768) {
      crossAxisCount = 3; //  // Untuk ukuran 26-50 % dari lebar layar
    } else if (screenWidth <= 1024) {
      crossAxisCount = 4; // Untuk ukuran 51-75 % dari lebar layar
    } else {
      crossAxisCount = 5; // Untuk ukuran 75-100 % dari lebar layar
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF800000),
        title: const Text(
          'KarawangKuy!',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBarWidget(onSearch: _searchPlaces),
          ),
          // Filter kategori daftar tempat wisata
          CategoryFilterWidget(
            categories: getCategories(),
            selectedCategory: selectedCategory,
            onCategorySelected: _filterPlaces,
          ),
          // Daftar tempat wisata
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 3 / 4,
              ),
              itemCount: displayedPlaces.length,
              padding: const EdgeInsets.all(8.0),
              itemBuilder: (context, index) {
                final place = displayedPlaces[index];
                return TourismPlaceCard(place: place);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  final Function(String) onSearch;

  const SearchBarWidget({Key? key, required this.onSearch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onSearch,
      decoration: InputDecoration(
        hintText: 'Cari tempat wisata...',
        prefixIcon: const Icon(Icons.search, color: Color(0xFF800000)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFF800000)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFF800000)),
        ),
      ),
    );
  }
}

class CategoryFilterWidget extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final Function(String) onCategorySelected;

  const CategoryFilterWidget({
    Key? key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          String category = categories[index];
          return GestureDetector(
            onTap: () => onCategorySelected(category),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: selectedCategory == category
                    ? const Color(0xFF800000)
                    : Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: selectedCategory == category
                      ? const Color(0xFF800000)
                      : Colors.grey,
                ),
              ),
              child: Center(
                child: Text(
                  category,
                  style: TextStyle(
                    color: selectedCategory == category
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TourismPlaceCard extends StatelessWidget {
  final TourismPlace place;

  const TourismPlaceCard({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(place: place);
        }));
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Image.asset(
                  place.imageAsset,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF800000),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      place.location,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}