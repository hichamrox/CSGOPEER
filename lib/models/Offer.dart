class Item {
  final int offer_id;
  final int offer_init;
  final DateTime accepted;
  final String item_color;
  final String item_image;
  final String inspectlink;
  final double item_float;
  final String item_paintseed;

  Item(
      {this.offer_init,
      this.offer_id,
      this.accepted,
      this.item_color,
      this.item_image,
      this.inspectlink,
      this.item_float,
      this.item_paintseed});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      offer_id: json['offer_id'] as int,
      offer_init: json['offer_init'] as int,
      accepted: json['accepted'] as DateTime,
      item_color: json['item_color'] as String,
      item_image: json['item_image'] as String,
      inspectlink: json['inspectlink'] as String,
      item_float: json['item_float'] as double,
      item_paintseed: json['item_paintseed'] as String,
    );
  }

  @override
  String toString() {
    return 'Cases{id: 1, name: $offer_id}';
  }
}
