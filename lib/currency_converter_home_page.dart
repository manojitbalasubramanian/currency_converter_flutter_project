import 'package:flutter/material.dart';

class CurrencyConverterHomePage extends StatefulWidget {
  const CurrencyConverterHomePage({super.key});

  @override
  State<CurrencyConverterHomePage> createState() =>
      _CurrencyConverterHomePage();
}

class _CurrencyConverterHomePage extends State<CurrencyConverterHomePage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 151, 174, 152),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(249, 170, 174, 110),
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "₹${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                color: Color.fromARGB(255, 45, 43, 33),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 237, 237, 237),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            //button
            //raised
            // appears a Text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                //onPressed: convert,
                onPressed: () {
                  convert();
                },
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                child: const Text("Convert"),
              ),
            ),
            const Text(
              "\nStandard dollar price 81 is fixed",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
