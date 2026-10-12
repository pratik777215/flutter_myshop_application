import 'package:flutter/material.dart';

class SafeImage extends StatelessWidget {
  final String url;
  final BoxFit fit;
  const SafeImage({super.key, required this.url, this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      loadingBuilder: (context, child, progress) => progress == null
          ? child
          : Container(
        color: Colors.grey.shade200,
        child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
      ),
      errorBuilder: (context, error, stack) => Container(
        color: Colors.grey.shade300,
        child: const Center(child: Icon(Icons.image_not_supported, color: Colors.grey)),
      ),
    );
  }
}
