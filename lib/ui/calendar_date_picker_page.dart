import 'package:flutter/material.dart';
import 'package:implementation_test_app/ui/list_of_items_page.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({
    super.key,
  });

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${date.year}/${date.month}/${date.day}',
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 18),
            ElevatedButton.icon(
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );

                if (newDate == null) return;
                setState(() => date = newDate);
              },
              icon: const Icon(Icons.calendar_month_outlined),
              label: const Text('Select Date'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ListOfItemsPage()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.navigate_next),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
