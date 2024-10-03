import 'package:flutter/material.dart';

class Pemesanan extends StatefulWidget {
  final String productName;
  final String productDescription;
  final String productImagePath; // Add image path

  const Pemesanan({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.productImagePath, // Add image path to constructor
  });

  @override
  State<Pemesanan> createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  String fullname = "";
  String email = "";
  String totalroom = '';
  String totalnight = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productName),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        // Center the content on the page
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center content horizontally
            children: [
              // Product image
              Image.asset(
                widget.productImagePath,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              // Product details
              Text(
                widget.productName,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.productDescription,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center, // Center the text
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 30),

              _fullnamefield(),
              _emailfield(),
              _totalroom(),
              _totalnight(),

              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Booking Now',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fullnamefield() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        enabled: true,
        style: const TextStyle(color: Colors.black),
        onChanged: (value) {
          setState(() {
            fullname = value;
          });
        },
        decoration: const InputDecoration(
            hintText: "fullname",
            hintStyle: TextStyle(color: Colors.black),
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.blueAccent))),
      ),
    );
  }

  Widget _emailfield() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        enabled: true,
        style: const TextStyle(color: Colors.black),
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: const InputDecoration(
            hintText: "email",
            hintStyle: TextStyle(color: Colors.black),
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.blueAccent))),
      ),
    );
  }

  Widget _totalroom() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        enabled: true,
        style: const TextStyle(color: Colors.black),
        onChanged: (value) {
          setState(() {
            totalroom = value;
          });
        },
        decoration: const InputDecoration(
            hintText: "email",
            hintStyle: TextStyle(color: Colors.black),
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.blueAccent))),
      ),
    );
  }

  Widget _totalnight() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        enabled: true,
        style: const TextStyle(color: Colors.black),
        onChanged: (value) {
          setState(() {
            totalnight = value;
          });
        },
        decoration: const InputDecoration(
            hintText: "Total Night",
            hintStyle: TextStyle(color: Colors.black),
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.blueAccent))),
      ),
    );
  }
}
