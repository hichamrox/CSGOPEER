class Item {
  final int items_id;
  final int offer_id;
  final String item_name;
  final String item_color;
  final String item_image;
  final String inspectlink;
  final double item_float;
  final String item_paintseed;

  Item(
      {this.items_id,
      this.offer_id,
      this.item_name,
      this.item_color,
      this.item_image,
      this.inspectlink,
      this.item_float,
      this.item_paintseed});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      items_id: json['items_id'] as int,
      offer_id: json['offer_id'] as int,
      item_name: json['item_name'] as String,
      item_color: json['item_color'] as String,
      item_image: json['item_image'] as String,
      inspectlink: json['inspectlink'] as String,
      item_float: json['item_float'] as double,
      item_paintseed: json['item_paintseed'] as String,
    );
  }

  @override
  String toString() {
    return 'Cases{id: $items_id, name: $offer_id}';
  }
}
