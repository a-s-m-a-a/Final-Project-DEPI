import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/image_cubit/image_cubit.dart';
import '../cubits/image_cubit/image_states.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, this.autoPlay = false});
  final bool autoPlay;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, ImageStates>(
      builder: (context, state) {
        final imageCubit = context.read<ImageCubit>();
        return Column(
          children: [
            if (imageCubit.images.isNotEmpty)
              CarouselSlider(
                items: imageCubit.images.map((imageFile) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: FileImage(imageFile),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  autoPlay: autoPlay,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayCurve: Curves.easeInOut,
                ),
              )
          ],
        );
      },
    );
  }
}
