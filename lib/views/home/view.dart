import 'package:dental/core/design/app_bar.dart';
import 'package:dental/views/home/pages/patient_files/view.dart';
import 'package:flutter/material.dart';
import '../../core/design/app_background.dart';
import '../../core/design/app_image.dart';
import 'pages/add_patient/view.dart';
import 'pages/appointments/view.dart';
import 'pages/prescriptions/view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex =2;

  List<Widget> pages = [
    AppointmentsView(),
    AddPatientView(),
    PatientFilesView(),
    PrescriptionsView(),
  ];
  List<String> titles = [
    "المواعيد",
    "اضافة مريض",
    "ملفات المرضى",
    "روشتة علاج",
  ];
  List<String> icons = [
    "time_progress_light",
    "user_add",
    "file_dock_light",
    "paper_light"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: List.generate(pages.length, (index) => BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/${icons[index]}.png",
                color:  Colors.black54,
                height: 35,
                width: 35,
              ),
              label: titles[index],
            ),),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            unselectedItemColor: Colors.black54,
            selectedItemColor: Colors.black,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
          ),
        )
    );
  }
}
