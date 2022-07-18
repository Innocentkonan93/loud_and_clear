import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:loud_and_clear/models/feed_model.dart';

import '../../widgets/custom_layout.dart';

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({
    Key? key,
    required this.feedModel,
  }) : super(key: key);
  final FeedModel feedModel;

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  bool isViewed = false;
  int currentPage = 0;
  List<String> items = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
  ];
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
      child: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(90, 70, 90, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 225,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.3,
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'In The News',
                                style: GoogleFonts.montserrat(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                widget.feedModel.title.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(
                                      color: Colors.black,
                                    ),
                              ),
                              Text(
                                DateFormat('dd. MM. yyyy')
                                    .format(widget.feedModel.date)
                                    .toString(),
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                               widget.feedModel.location,
                                style: GoogleFonts.montserrat(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        widget.feedModel.description,
                        style: Theme.of(context).textTheme.headline6!,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 25),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: isViewed
                      ? GaleryImagesViewer(
                          key: ValueKey(isViewed),
                          currentPage: currentPage,
                          items: items,
                        )
                      : SingleChildScrollView(
                          key: ValueKey(isViewed),
                          scrollDirection: Axis.vertical,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(60, 60, 60, 60),
                            decoration: const BoxDecoration(
                              color: Colors.white10,
                            ),
                            child: Wrap(
                              runSpacing: 10,
                              spacing: 10,
                              alignment: WrapAlignment.spaceBetween,
                              runAlignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              children: List.generate(
                                items.length,
                                (index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        isViewed = true;
                                        currentPage = index;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      child: Image.asset(
                                        items[index],
                                        scale: 2,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                ),
                // child: GaleryImagesViewer(items: items),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GaleryImagesViewer extends StatefulWidget {
  const GaleryImagesViewer({
    Key? key,
    required this.items,
    required this.currentPage,
  }) : super(key: key);
  final List<String> items;
  final int currentPage;
  @override
  State<GaleryImagesViewer> createState() => _GaleryImagesViewerState();
}

class _GaleryImagesViewerState extends State<GaleryImagesViewer> {
  int? _currentPage;
  CarouselController controller = CarouselController();

  @override
  void initState() {
    _currentPage = widget.currentPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> items = widget.items;

    return Column(
      children: [
        Expanded(
          child: Center(
            child: CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 0.6,
                enlargeCenterPage: true,
                initialPage: _currentPage!,
                onPageChanged: (page, reason) {
                  setState(() {
                    _currentPage = page;
                  });
                },
              ),
              items: items.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.1)),
                      child: Image.asset(
                        i,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 90,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.previousPage();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(items.length, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _currentPage = index;
                            });
                            controller.jumpToPage(_currentPage!);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: _currentPage == index
                                  ? Border.all(
                                      color: Colors.white,
                                    )
                                  : null,
                            ),
                            height: 40,
                            child: Image.asset(items[index]),
                          ),
                        );
                      }).toList(),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.nextPage();
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
