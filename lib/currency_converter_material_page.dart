import 'package:flutter/material.dart';

// class Currency_Converter_Material_Page extends

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0;
    final TextEditingController textEditingController = TextEditingController();
    // My Function
    const border = OutlineInputBorder(
      borderSide: BorderSide(
          width: 2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(253, 82, 111, 1.0),
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(253, 82, 111, 1.0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(33, 33, 33, 1.0),
                  ),
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                  ),
                  prefixIconColor: Color.fromRGBO(33, 33, 33, 1.0),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  // isDense: true,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    result = double.parse(textEditingController.text);
                  },
                  // <----------- Important ---------->
                  style: TextButton.styleFrom(
                    backgroundColor: (Colors.black),
                    foregroundColor: (Colors.white),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Convert")),
            )
          ],
        ),
      ),
    );
  }
}
