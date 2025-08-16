import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubit/notes_cubit/notescubit_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/simple_bloc_observel.dart';

void main() async {
  Bloc.observer = SimpleBlocObservel();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(DevicePreview(builder: (context) => const NotesApp()));
  // runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotescubitCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        routes: {
          NotesView.id: (context) => const NotesView(),
        },
        initialRoute: NotesView.id,
      ),
    );
  }
}
