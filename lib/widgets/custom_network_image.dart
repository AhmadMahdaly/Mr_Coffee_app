import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mr_coffee/widgets/constans.dart';
import 'package:mr_coffee/widgets/show_snack_bar.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      fit: BoxFit.cover,
      placeholder: (context, url) {
        return const Center(
          child: SpinKitWaveSpinner(
            color: KMainColor,
          ),
        );
      },
      errorWidget: (context, url, error) {
        return IconButton(
          icon: const Icon(
            Icons.error,
          ),
          onPressed: () {
            ShowSnackBar(
              context,
              'check Internet',
            );
          },
        );
      },
    );
  }
}
