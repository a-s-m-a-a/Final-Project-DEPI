import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bs_rashhuli/cubits/app_cubit/app_states.dart';

import '../../models/category_model.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());
  static AppCubit get(context) => BlocProvider.of(context);
  TextEditingController? addLocationController;
  Category? selectedCategory;
  void setAddLocationController(TextEditingController controller) {
    addLocationController = controller;
  }

  void setPlaceLocation(String region) {
    addLocationController?.text = region; // Update the controller text
    emit(SuccessfulSetPlaceLocationState());
  }

  void setCategory(Category category) {
    selectedCategory = category;
    emit(SuccessfulSetCategoryState());
  }
  
}
