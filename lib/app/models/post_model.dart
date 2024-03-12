class PostModel {
  final List<Data>? data;

  PostModel({
    this.data,
  });

  PostModel.fromJson(Map<String, dynamic> json) : data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>)).toList();

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}

class Data {
  final String? userName;
  final String? name;

  int likes;
  bool isLiked;
  final int? comments;
  final String? image;
  final String? profileImage;
  final String? description;

  Data({
    this.userName,
    this.name,
    this.image,
    this.profileImage,
    this.comments,
    this.likes = 0,
    this.description,
    this.isLiked = false,
  });

  Data.fromJson(Map<String, dynamic> json)
      : userName = json['movie_id'] as String?,
        name = json['name'] as String?,
        image = json['image'] as String?,
        profileImage = json['profileImage'] as String?,
        description = json['description'] as String?,
        comments = json['release_date'] as int?,
        isLiked = json['isLiked'] as bool,
        likes = json['type'] as int;

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'name': name,
        'image': image,
        'profileImage': profileImage,
        'comments': comments,
        'description': description,
        'likes': likes,
        'isLiked': isLiked,
      };
}
