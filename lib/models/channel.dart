// lib/models/channel.dart

class Channel {
  final String name;
  final String id;

  Channel({required this.name, required this.id});

  String get logoPath => 'assets/img/$id.png';
}
