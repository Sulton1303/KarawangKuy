import 'package:flutter/material.dart';
import 'package:karawang_kuy/Model/tourism_place.dart';

class DetailScreen extends StatefulWidget {
  final TourismPlace place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isLandscape = constraints.maxWidth > 600; //Kondisi responsifitas untuk layar mobile yang berisifat landscape maupun web

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeaderImage(isLandscape),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: isLandscape
                        ? _buildHorizontalContent()
                        : _buildVerticalContent(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // Widget responsifitas gambar utama (header)
  Widget _buildHeaderImage(bool isLandscape) {
    return Stack(
      children: [
        Image.asset(
          widget.place.imageAsset,
          width: double.infinity,
          height: isLandscape ? 400 : 250,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Icon(Icons.broken_image, size: 100, color: Colors.grey),
            );
          },
        ),
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : const Color(0xFF800000),
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  // Widget untuk Konten Vertikal (Mobile Portrait)
  Widget _buildVerticalContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlaceInfoWidget(place: widget.place),
        const SizedBox(height: 16),
        OverviewSectionWidget(description: widget.place.description),
        const SizedBox(height: 16),
        _buildPointOfInterest(),
      ],
    );
  }

  // Widget untuk Konten Horizontal (Mobile Landscape / Web)
  Widget _buildHorizontalContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            widget.place.imageAsset,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlaceInfoWidget(place: widget.place),
              const SizedBox(height: 16),
              OverviewSectionWidget(description: widget.place.description),
              const SizedBox(height: 16),
              _buildPointOfInterest(),
            ],
          ),
        ),
      ],
    );
  }

  // Widget untuk galeri dari tempat wisata
  Widget _buildPointOfInterest() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Galeri",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF800000),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.place.imageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  widget.place.imageUrls[index],
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.broken_image,
                        size: 50, color: Colors.grey);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// Widget untuk Informasi Tempat
class PlaceInfoWidget extends StatelessWidget {
  final TourismPlace place;

  const PlaceInfoWidget({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          place.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF800000),
          ),
        ),
        const SizedBox(height: 10),
        InfoRowWidget(icon: Icons.access_time, text: "Buka: ${place.openDays} | ${place.openTime}"),
        InfoRowWidget(icon: Icons.location_on, text: "Lokasi: ${place.location}"),
        InfoRowWidget(icon: Icons.monetization_on, text: "Harga Tiket: ${place.ticketPrice}"),
      ],
    );
  }
}

// Widget untuk Baris Informasi
class InfoRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoRowWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 20),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}

// Widget untuk Deskripsi Tempat
class OverviewSectionWidget extends StatelessWidget {
  final String description;

  const OverviewSectionWidget({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Deskripsi",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF800000),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}