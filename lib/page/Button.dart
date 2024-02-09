import 'package:button_hide/config/import.dart';
import 'package:button_hide/page/TextField.dart';
import 'package:get/get.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  get get => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 6),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
        child: Column(
          children: [
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Click me!'),
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {
                    get.to();
                  },
                  child: const Text(
                    'Click me!',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {},
                  child: const Text('Click me!'),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Click me!'),
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {},
                  child: const Text('Click me!'),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 82.0, vertical: 16.0),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                  label: const Text("Filter"),
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                  label: const Text("Filter"),
                ),
                ElevatedButton(
                  child: const Text('Woolha.com'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
