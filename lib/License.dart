class License {
  License({
      this.key, 
      this.name, 
      this.spdxId, 
      this.url, 
      this.nodeId,});

  License.fromJson(dynamic json) {
    key = json['key'];
    name = json['name'];
    spdxId = json['spdx_id'];
    url = json['url'];
    nodeId = json['node_id'];
  }
  String key;
  String name;
  String spdxId;
  String url;
  String nodeId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    map['spdx_id'] = spdxId;
    map['url'] = url;
    map['node_id'] = nodeId;
    return map;
  }

}