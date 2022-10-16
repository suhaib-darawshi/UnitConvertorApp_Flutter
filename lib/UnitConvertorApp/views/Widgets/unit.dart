class Unit {
  String? name;
  num? value;
  Unit(this.name, this.value);
  Unit.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.value = map['value'];
  }
}
