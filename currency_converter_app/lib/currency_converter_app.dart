import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderSet = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Currency Converter application",
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 20, color: Colors.yellow),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter amount in USD",
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.purple,
                  hoverColor: Colors.lightBlue,
                  prefixIcon: const Icon(Icons.arrow_forward),
                  prefixIconColor: Colors.green,
                  border: borderSet,
                  focusedBorder: borderSet,
                  enabledBorder: borderSet,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  setState(() {
                    result = double.parse(_controller.text) * 85.60;
                  });
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
