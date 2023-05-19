// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hidoc_web/application/network.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  Future<void> _launchUrl({required Uri url}) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    // NetworkHelper.fetchFormNetwork();

    return Scaffold(
      body: FutureBuilder(
          future: NetworkHelper.fetchFormNetwork(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Check Your Internet"),
                ),
              );
            } else if (snapshot.hasData) {
              final datas = snapshot.data;
              final bulletin = datas!.data.bulletin;
              final trending = datas.data.trandingBulletin;
              final explorerticle = datas.data.exploreArticle;
              final trendinArticle = datas.data.trandingArticle;
              final news = datas.data.news;
              final article = datas.data.article;
              return Column(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: double.infinity,
                          width: 150,
                          child: Center(
                            child: Image.asset(
                                "assets/download__1_-removebg-preview.png"),
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              "Social | Cases | Quizzes |",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black45),
                            ),
                            Text(
                              " Articles ",
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 189, 213),
                              ),
                            ),
                            Text(
                              "| Drugs | Webinars | Calculators | GuidLines | Survays | News | Clinical Trails",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black45),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: Colors.black45,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(Icons.list,
                                size: 30, color: Colors.black45),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "G",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.black45),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 234, 234, 234),
                      child: ListView(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 100,
                              right: 100,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Articles",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 300,
                                    right: 300,
                                    top: 30,
                                    bottom: 40,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      border: const Border(

                                          // bottom: BorderSide(c),
                                          ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black45,
                                          blurRadius: 5,
                                          // offset: Offset.fromDirection(/),
                                          blurStyle: BlurStyle.solid,
                                        )
                                      ],
                                    ),
                                    height: 60,
                                    // ignore: prefer_const_constructors
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Critical Care",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Icon(Icons.arrow_drop_down_rounded)
                                        ],
                                      ),
                                    ),
                                    // width: 200,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 205, 205, 205),
                                          ),
                                          height: 220,
                                          width: 350,
                                          child: const Center(
                                            child: Icon(
                                              Icons.newspaper_rounded,
                                              size: 100,
                                              color: Colors.black38,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            height: 50,
                                            width: 70,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 3, 189, 213),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30))),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "Points",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  "2".toString(),
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.9,
                                      height: 220,
                                      // color: Colors.amber,
                                      // color: Colors.amber,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            article.articleTitle,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "The Nexus Criteria has been used healthcare professionals to determine whether a patient needs critical care or not.",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          // Container(colo)
                                          SizedBox(
                                            height: 40,
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              final Uri _url = Uri.parse(
                                                  article.redirectLink);
                                              await _launchUrl(url: _url);
                                            },
                                            child: Text(
                                              "Read full article to earn point",
                                              style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Color.fromARGB(
                                                    255, 3, 189, 213),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Puclished Date:15 Apr 2023",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black45),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Divider(
                                  color: Colors.black45,
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Hidoc Bulletin",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 23,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: bulletin.length,
                                              itemBuilder: (context, index) {
                                                return Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 3, 189, 213),
                                                          height: 5,
                                                          width: 140,
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      bulletin[index]
                                                          .articleTitle,
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      bulletin[index]
                                                          .articleDescription,
                                                      style: const TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () async {
                                                        final Uri _url =
                                                            Uri.parse(bulletin[
                                                                    index]
                                                                .redirectLink);
                                                        await _launchUrl(
                                                            url: _url);
                                                      },
                                                      child: const Text(
                                                        "Read more",
                                                        style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          // textBaseline: TextBaseline.alphabetic,
                                                          color: Color.fromARGB(
                                                              255, 3, 189, 213),
                                                          // fontWeight: FontWeight.w900,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              }),
                                          const SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 215, 234, 238),
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),

                                      // height: 400,
                                      // width: 450,
                                      width: MediaQuery.of(context).size.width /
                                          2.8,
                                      child: Padding(
                                        padding: const EdgeInsets.all(25.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Trending Hidoc Bulletin",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 20,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            ListView.builder(
                                              shrinkWrap: true,
                                              physics: const ScrollPhysics(),
                                              itemCount: trending.length,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 20),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        trending[index]
                                                            .articleTitle,
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        trending[index]
                                                            .articleDescription,
                                                        style: const TextStyle(
                                                          // fontWeight: FontWeight.w900,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () async {
                                                          final Uri url = Uri
                                                              .parse(trending[
                                                                      index]
                                                                  .redirectLink);
                                                          await _launchUrl(
                                                              url: url);
                                                        },
                                                        child: const Text(
                                                          "Read more",
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            // textBaseline: TextBaseline.alphabetic,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    3,
                                                                    189,
                                                                    213),
                                                            // fontWeight: FontWeight.w900,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        final Uri _url = Uri.parse(
                                            trendinArticle.last.redirectLink);
                                        await _launchUrl(url: _url);
                                      },
                                      child: Container(
                                        color: const Color.fromARGB(
                                            255, 3, 189, 213),
                                        height: 40,
                                        width: 300,
                                        child: Center(
                                          child: Text(
                                            "Read More Bulletins",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black38,
                                        ),
                                      ),
                                      width: MediaQuery.of(context).size.width /
                                          3.7,
                                      child: Padding(
                                        padding: const EdgeInsets.all(17.0),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Latest Articles",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 7,
                                            ),
                                            const Divider(
                                              thickness: 1.5,
                                              color: Colors.black38,
                                            ),
                                            // MySizedBox(h: 10, w: 0),
                                            ListView.builder(
                                              shrinkWrap: true,
                                              physics: const ScrollPhysics(),
                                              itemCount: 2,
                                              itemBuilder: (context, index) {
                                                return Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      explorerticle
                                                          .last.articleTitle,
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Divider(
                                                      thickness: 1,
                                                      color: Colors.black26,
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        border: Border.all(
                                          color: Colors.black38,
                                        ),
                                      ),
                                      width: MediaQuery.of(context).size.width /
                                          3.7,
                                      child: Padding(
                                        padding: const EdgeInsets.all(17.0),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Trending Articles",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: 1,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Container(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 237, 237, 237),
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            5,
                                                        width: double.infinity,
                                                        child: Center(
                                                          child: Image(
                                                            image: NetworkImage(
                                                              trendinArticle[
                                                                      index]
                                                                  .articleImg,
                                                            ),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        trendinArticle[index]
                                                            .articleTitle,
                                                        style: const TextStyle(
                                                          // fontWeight: FontWeight.w900,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      const Divider(
                                                        thickness: 1,
                                                        color: Colors.black26,
                                                      ),
                                                    ],
                                                  );
                                                }),
                                            ListView.builder(
                                                itemCount: 1,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                237,
                                                                237,
                                                                237),
                                                            height: 50,
                                                            width: 80,
                                                            child: Center(
                                                              child: Image(
                                                                image: NetworkImage(
                                                                    trendinArticle
                                                                        .last
                                                                        .articleImg),
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 200,
                                                            child: Text(
                                                              trendinArticle
                                                                  .last
                                                                  .articleTitle,
                                                              style: TextStyle(
                                                                // fontWeight: FontWeight.w900,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            // color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black38,
                                            ),
                                          ),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3.7,
                                          child: Padding(
                                            padding: const EdgeInsets.all(17.0),
                                            child: Column(
                                              children: [
                                                const Text(
                                                  "Explore more in Articles",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 7,
                                                ),
                                                const Divider(
                                                  thickness: 1.5,
                                                  color: Colors.black38,
                                                ),
                                                ListView.builder(
                                                  shrinkWrap: true,
                                                  physics:
                                                      const ScrollPhysics(),
                                                  itemCount:
                                                      explorerticle.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          explorerticle[index]
                                                              .articleTitle,
                                                          style:
                                                              const TextStyle(
                                                            // fontWeight: FontWeight.w900,
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                        const Divider(
                                                          thickness: 1,
                                                          color: Colors.black26,
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            final Uri _url = Uri.parse(
                                                explorerticle
                                                    .last.redirectLink);
                                            await _launchUrl(url: _url);
                                          },
                                          child: Container(
                                            color: const Color.fromARGB(
                                                255, 3, 189, 213),
                                            height: 40,
                                            width: 330,
                                            child: Center(
                                              child: Text(
                                                "Explore Hidoc Dr",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            // height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 100,
                                right: 100,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Center(
                                    child: Text(
                                      "What's more on Hidoc Dr.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.black12,
                                            border: Border.all()),
                                        // height: 200,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.8,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 17,
                                                left: 17,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "News",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  ),
                                                  const SizedBox(
                                                      height: 20, width: 0),
                                                  ListView.builder(
                                                    shrinkWrap: true,
                                                    itemCount: news.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 300,
                                                            child: Text(
                                                              news[index].title,
                                                              style:
                                                                  const TextStyle(
                                                                // fontWeight: FontWeight.w900,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          Container(
                                                            width: 300,
                                                            height: 140,
                                                            child:
                                                                Image.network(
                                                              news[index]
                                                                  .urlToImage,
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black38,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(17.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            255, 182, 229, 253),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              7.0),
                                                      child: Image.asset(
                                                        "assets/Screenshot_2023-05-18_002601-removebg-preview.png",
                                                        // scale: 1,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      height: 0, width: 10),
                                                  const Text(
                                                    "Quizzes: ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                  const Text(
                                                    "Participate & Win Exciting Prizes",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.w900,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                thickness: 1,
                                                color: Colors.black26,
                                              ),
                                              const Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        Color.fromARGB(
                                                            255, 182, 229, 253),
                                                    child: Icon(
                                                      Icons.calculate_outlined,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height: 0, width: 10),
                                                  Text(
                                                    "Medical \nCalculator: ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                  Text(
                                                    "Get Access to 800+ Evidence \nBased Calculators",
                                                    style: TextStyle(
                                                      // fontWeight: FontWeight.w900,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 60,
                                    color: const Color.fromARGB(
                                        255, 208, 247, 255),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Social Network for doctors - A special feature on Hidoc Dr.",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 3, 189, 213),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            width: 50,
                                            height: 30,
                                            child: Center(
                                              child: GestureDetector(
                                                onTap: () async {
                                                  final Uri url = Uri.parse(
                                                      trendinArticle
                                                          .last.redirectLink);
                                                  await _launchUrl(url: url);
                                                },
                                                child: const Text(
                                                  "Visit",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            width: double.infinity,
                            height: 300,
                            color: Colors.amber,
                            child: Image.asset(
                              "assets/Screenshot 2023-05-19 235335.png",
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
