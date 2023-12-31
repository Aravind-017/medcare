import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../doctor/doc-categor.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_drpdown_menu.dart';
import '../widgets/date_picker.dart';


Category? selectedSpecialty;
Doctor? selectedDoctor;
DateTime selectedDate = DateTime.now();

final _formKey = GlobalKey<FormState>();

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  void onDateSelected(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MEDCARE',
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            icon: Image.asset('assets/logo/medcare.png',
                width: 36.0, height: 36.0),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GFButton(
                      onPressed: () {},
                      text: "CREATE APPOINTMENTS",
                      type: GFButtonType.outline,
                    ),
                    GFButton(
                      onPressed: () {},
                      text: "BOOKED APPOINTMENTS",
                      type: GFButtonType.outline,
                    ),
                  ],
                ),
              ),
              CustomCard(),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomDropdownMenu<Category>(
                      hint: 'Select Your Specialty',
                      items: categories,
                      onChanged: (value) => selectedSpecialty = value,
                      itemBuilder: (Category category) => category.name,
                    ),
                    const SizedBox(height: 30),
                    CustomDropdownMenu<Doctor>(
                      hint: 'Select Your Doctor',
                      items: doctors,
                      onChanged: (value) => selectedDoctor = value,
                      itemBuilder: (Doctor doctor) => doctor.name,
                    ),
                    const SizedBox(height: 30),
                    DatePickerWidget(
                        onDateSelected: onDateSelected,
                        selectedDate: selectedDate),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print('Form is valid');
                        } else {
                          print('Form is not valid');
                        }
                      },
                      child: Text('CREATE APPOINTMENTS'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}