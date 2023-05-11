import 'package:coursenetic/src/features/auth/presentation/widgets/register_textfield.dart';
import 'package:coursenetic/src/features/homepages/presentation/widgets/coursenetics_settings_icons.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      prefixIcon: const Icon(Icons.search),
      suffixIcon: const Icon(CourseneticsSettings.settings),
      hintText: "Search for Courses",
    );
  }
}
