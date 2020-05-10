class Hero {
  String name;
  String image_url;

  Hero(this.name, this.image_url);

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        image_url = json['image']['url'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'image_url': image_url,
      };
}
