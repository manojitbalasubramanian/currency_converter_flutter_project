import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoApp extends StatefulWidget {
  const CurrencyConverterCupertinoApp({super.key});

  @override
  State<CurrencyConverterCupertinoApp> createState() =>
      _CurrencyConverterCupertinoAppState();
}

class _CurrencyConverterCupertinoAppState
    extends State<CurrencyConverterCupertinoApp> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey2,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey2,
        //elevation: 0,
        middle: Text("Currency Converter"),
        //centerTitle: false,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "₹${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                placeholder: "Enter the amount in USD",
                cursorColor: const Color.fromARGB(255, 255, 255, 255),
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //button
            //raised
            // appears a Text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton(
                //onPressed: convert,
                onPressed: () {
                  convert();
                },
                color: CupertinoColors.white,
                child: const Text("Convert"),
              ),
            ),
            const Text(
              "\nStandard dollar price 81 is fixed",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
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
