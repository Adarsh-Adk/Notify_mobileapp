class Response {
  Title title;
  Content content;
  Content excerpt;
  String jetpackFeaturedMediaUrl;

  Response(
      {this.title, this.content, this.excerpt, this.jetpackFeaturedMediaUrl});

  Response.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    content =
    json['content'] != null ? new Content.fromJson(json['content']) : null;
    excerpt =
    json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
    jetpackFeaturedMediaUrl = json['jetpack_featured_media_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.content != null) {
      data['content'] = this.content.toJson();
    }
    if (this.excerpt != null) {
      data['excerpt'] = this.excerpt.toJson();
    }
    data['jetpack_featured_media_url'] = this.jetpackFeaturedMediaUrl;
    return data;
  }
}

class Title {
  String rendered;

  Title({this.rendered});

  Title.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    return data;
  }
}

class Content {
  String rendered;
  bool protected;

  Content({this.rendered, this.protected});

  Content.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    data['protected'] = this.protected;
    return data;
  }
}