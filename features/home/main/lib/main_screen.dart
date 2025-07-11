import 'package:app_settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:main/main_event.dart';
import 'package:main/main_screen_bloc.dart';
import 'package:main/main_state.dart';
import 'package:movies/movies_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [MoviesScreen(), SettingsScreen()];
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<MainScreenBloc, MainScreenState>(
          builder: (context, state) {
            return Text(
              state.selectedIndex == 0 ? 'Movies' : 'Settings',
              style: const TextStyle(fontSize: 20),
            );
          },
        ),
      ),
      body: BlocBuilder<MainScreenBloc, MainScreenState>(
        builder: (context, state) {
          return _screens[state.selectedIndex];
        },
      ),

      bottomNavigationBar: BlocBuilder<MainScreenBloc, MainScreenState>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<MainScreenBloc>().add(ChangeTab(index));
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          );
        },
      ),
    );
  }
}
