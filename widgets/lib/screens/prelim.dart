import 'package:flutter/material.dart';

class Prelim extends StatelessWidget {
  const Prelim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView( // To prevent overflow
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                const Text(
                  "Prelim Exam",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  "Roger G. Cagape Jr.",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),

                const SizedBox(height: 40),

                // BOX 1
                Container(
                  width: 170,
                  height: 170,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "BOX 1",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // BOX 2 & BOX 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "BOX 2",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "BOX 3",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}