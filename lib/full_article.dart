import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FullArticle extends StatefulWidget {
  final articleImage;
  final articleHeadline;
  final articleText;

  const FullArticle(
      {Key key, this.articleImage, this.articleHeadline, this.articleText})
      : super(key: key);
  @override
  _FullArticleState createState() => _FullArticleState();
}

class _FullArticleState extends State<FullArticle> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: width * 0.04),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Hero(
                tag: widget.articleHeadline,
                transitionOnUserGestures: true,
                child: CachedNetworkImage(
                  imageUrl: widget.articleImage,
                  useOldImageOnUrlChange: true,
                  placeholder: (context, url) => Container(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.01),
                child: Text(
                  widget.articleHeadline,
                  style: TextStyle(
                      fontSize: width * 0.05, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: height * 0.02,
                    left: width * 0.05,
                    right: width * 0.05),
                child: Text(
                  widget.articleText,
                  style: TextStyle(
                    fontSize: width * 0.04,
                    letterSpacing: 1.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
