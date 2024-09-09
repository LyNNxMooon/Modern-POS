import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:modern_pos/constants/images.dart';
import 'package:modern_pos/widgets/loading_widget.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(90)),
        child: CachedNetworkImage(
          imageUrl:
              img.isEmpty ? kPlaceHolderImage : "$kProfileImageURLPrefix$img",
          fit: BoxFit.cover,
          placeholder: (context, url) => const LoadingWidget(),
          errorWidget: (context, url, error) => const Center(
            child: Icon(Icons.error),
          ),
        ));
  }
}
