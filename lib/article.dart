class NewsArticle {
  String _articelImage;
  String _articelContent;
  String _articleHeadline;

  NewsArticle(String articleImage, String articleText, String articleHeadline) {
    this._articelContent = articleText;
    this._articelImage = articleImage;
    this._articleHeadline = articleHeadline;
  }

  String get articleImage {
    return this._articelImage;
  }

  String get articleContent {
    return this._articelContent;
  }

  String get articleHeadline {
    return this._articleHeadline;
  }
}
