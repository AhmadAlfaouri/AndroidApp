class ShowOneProducts {
    int id;
    int catagoriesId;
    String quanity;
    String width;
    String name;
    String price;
    String length;
    String discount;
    String reviewTotal;
    String description;
    String vector;
    String image;
    DateTime createdAt;
    DateTime updatedAt;

    ShowOneProducts({
        required this.id,
        required this.catagoriesId,
        required this.quanity,
        required this.width,
        required this.name,
        required this.price,
        required this.length,
        required this.discount,
        required this.reviewTotal,
        required this.description,
        required this.vector,
        required this.image,
        required this.createdAt,
        required this.updatedAt,
    });

    factory ShowOneProducts.fromJson(Map<String, dynamic> json) => ShowOneProducts(
        id: json["id"],
        catagoriesId: json["catagories_id"],
        quanity: json["quanity"],
        width: json["width"],
        name: json["name"],
        price: json["price"],
        length: json["length"],
        discount: json["discount"],
        reviewTotal: json["review_total"],
        description: json["description"],
        vector: json["vector"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "catagories_id": catagoriesId,
        "quanity": quanity,
        "width": width,
        "name": name,
        "price": price,
        "length": length,
        "discount": discount,
        "review_total": reviewTotal,
        "description": description,
        "vector": vector,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}