import 'package:equatable/equatable.dart';

class Language implements Equatable {
  const Language({required this.code, required this.name});

  final String code;
  final String name;

  static List<Language> supportedLanguages = [
    const Language(code: 'en', name: 'English'),
    const Language(code: 'de', name: 'German'),
    const Language(code: 'ru', name: 'Russian'),
    const Language(code: 'uk', name: 'Ukrainian'),
    const Language(code: 'ja', name: 'Japanese'),
    const Language(code: 'es', name: 'Spanish'),
    const Language(code: 'fr', name: 'French'),
    const Language(code: 'nl', name: 'Dutch'),
    const Language(code: 'it', name: 'Italian'),
    const Language(code: 'sv', name: 'Swedish'),
    const Language(code: 'ar', name: 'Arabic'),
    const Language(code: 'fa', name: 'Farsi'),
    const Language(code: 'he', name: 'Hebrew'),
    const Language(code: 'id', name: 'Indonesian'),
    const Language(code: 'zh', name: 'Chinese'),
    const Language(code: 'as', name: 'Assamese'),
    const Language(code: 'hi', name: 'Hindi'),
    const Language(code: 'bn', name: 'Bengali'),
    const Language(code: 'pa', name: 'Punjabi'),
    const Language(code: 'te', name: 'Telugu'),
    const Language(code: 'ta', name: 'Tamil'),
    const Language(code: 'ml', name: 'Malayalam'),
    const Language(code: 'mr', name: 'Western Mari'),
    const Language(code: 'kn', name: 'Kannada'),
    const Language(code: 'or', name: 'Oriya'),
    const Language(code: 'sa', name: 'Sanskrit'),
    const Language(code: 'gu', name: 'Gujarati'),
    const Language(code: 'pl', name: 'Polish'),
    const Language(code: 'mk', name: 'Macedonian'),
    const Language(code: 'be', name: 'Belarusian'),
    const Language(code: 'bg', name: 'Bulgarian'),
    const Language(code: 'sr', name: 'Serbian'),
  ];

  @override
  List<Object?> get props => [code, name];

  @override
  bool? get stringify => true;
}
