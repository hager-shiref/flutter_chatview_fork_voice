import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:drag_down_to_pop/drag_down_to_pop.dart';

class ImageViewerPageRoute extends MaterialPageRoute {
  ImageViewerPageRoute(WidgetBuilder builder)
      : super(builder: builder, maintainState: false);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return const DragDownToPopPageTransitionsBuilder()
        .buildTransitions(this, context, animation, secondaryAnimation, child);
  }

  @override
  bool canTransitionFrom(TransitionRoute previousRoute) {
    return false;
  }

  @override
  bool canTransitionTo(TransitionRoute nextRoute) {
    return false;
  }
}

class ImagesPreviewPage extends StatelessWidget {
  final List<String> images;

  const ImagesPreviewPage({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF11897D),
          ),
        ),
      ),
      body: GestureDetector(
        onVerticalDragEnd: (_) {
          Navigator.pop(context);
        },
        child: images[0].endsWith('.svg')
            ? Center(
                child: SvgPicture.network(
                  images[0],
                ),
              )
            : PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: NetworkImage(images[index]),
                    initialScale: PhotoViewComputedScale.contained,
                  );
                },
                enableRotation: true,
                itemCount: images.length,
                loadingBuilder: (context, event) => Center(
                  child: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(
                      value: event == null
                          ? 0
                          : event.cumulativeBytesLoaded /
                              event.expectedTotalBytes!,
                    ),
                  ),
                ),
                onPageChanged: (index) {
                  selectedIndex = index;
                },
              ),
      ),
    );
  }
}
