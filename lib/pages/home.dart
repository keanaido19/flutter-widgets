import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _petrolPricePerLitre = 0;
  int _dieselPricePerLitre = 0;

  void _incrementPetrolPrice() {
    setState(() {
      _petrolPricePerLitre++;
    });
  }

  void _incrementDieselPrice() {
    setState(() {
      _dieselPricePerLitre++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
        title: Center(
          child: Text(widget.title)
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_rounded),
            tooltip: 'Increment Diesel Price',
            onPressed: _incrementDieselPrice,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Divider(
              color: Colors.transparent,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: <Widget>[
                        const Text(
                          'Current Petrol Price:',
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'R',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Text(
                              '$_petrolPricePerLitre',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            Text(
                              ' per litre.',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                      ]
                  ),
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.orangeAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      children: <Widget>[
                        const Text(
                          'Current Diesel Price:',
                        ),
                        Text(
                          'R$_dieselPricePerLitre per litre.',
                          style: Theme
                              .of(context)
                              .textTheme
                              .headline4,
                        ),
                      ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key("petrolIncrementButton"),
        onPressed: _incrementPetrolPrice,
        tooltip: 'Increment Fuel Price',
        child: const Icon(Icons.add),
      ),
    );
  }
}
