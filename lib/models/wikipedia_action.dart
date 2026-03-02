import 'package:json_annotation/json_annotation.dart';

part 'wikipedia_action.g.dart';

@JsonSerializable()
class WikipediaAction {
  WikipediaAction({
    required this.action,
    required this.changeSize,
    required this.hashtags,
    required this.isAnon,
    required this.isBot,
    required this.isMinor,
    required this.isNew,
    required this.isUnpatrolled,
    required this.mentions,
    required this.ns,
    required this.pageTitle,
    required this.parentRevId,
    required this.parsedSummary,
    required this.revId,
    required this.section,
    required this.summary,
    required this.url,
    required this.user,
  });

  factory WikipediaAction.fromJson(Map<String, dynamic> json) =>
      _$WikipediaActionFromJson(json);

  Map<String, dynamic> toJson() => _$WikipediaActionToJson(this);

  final String action;
  final int? changeSize;
  final List<String> hashtags;
  final bool isAnon;
  final bool isBot;
  final bool? isMinor;
  final bool isNew;
  final bool isUnpatrolled;
  final List<String> mentions;
  final String ns;
  final String pageTitle;
  final String? parentRevId;
  final String parsedSummary;
  final String? revId;
  final String section;
  final String summary;
  final String? url;
  final String user;
}
