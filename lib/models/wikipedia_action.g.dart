// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikipedia_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WikipediaAction _$WikipediaActionFromJson(Map<String, dynamic> json) =>
    WikipediaAction(
      action: json['action'] as String,
      changeSize: (json['change_size'] as num?)?.toInt(),
      hashtags: (json['hashtags'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isAnon: json['is_anon'] as bool,
      isBot: json['is_bot'] as bool,
      isMinor: json['is_minor'] as bool?,
      isNew: json['is_new'] as bool,
      isUnpatrolled: json['is_unpatrolled'] as bool,
      mentions: (json['mentions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ns: json['ns'] as String,
      pageTitle: json['page_title'] as String,
      parentRevId: json['parent_rev_id'] as String?,
      parsedSummary: json['parsed_summary'] as String,
      revId: json['rev_id'] as String?,
      section: json['section'] as String,
      summary: json['summary'] as String,
      url: json['url'] as String?,
      user: json['user'] as String,
    );

Map<String, dynamic> _$WikipediaActionToJson(WikipediaAction instance) =>
    <String, dynamic>{
      'action': instance.action,
      'change_size': instance.changeSize,
      'hashtags': instance.hashtags,
      'is_anon': instance.isAnon,
      'is_bot': instance.isBot,
      'is_minor': instance.isMinor,
      'is_new': instance.isNew,
      'is_unpatrolled': instance.isUnpatrolled,
      'mentions': instance.mentions,
      'ns': instance.ns,
      'page_title': instance.pageTitle,
      'parent_rev_id': instance.parentRevId,
      'parsed_summary': instance.parsedSummary,
      'rev_id': instance.revId,
      'section': instance.section,
      'summary': instance.summary,
      'url': instance.url,
      'user': instance.user,
    };
