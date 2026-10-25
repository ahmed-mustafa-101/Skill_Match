import 'package:flutter/material.dart';

@immutable
class JobListing {
  const JobListing({
    required this.id,
    required this.title,
    required this.company,
    required this.initials,
    required this.location,
    required this.experience,
    required this.employmentType,
    required this.posted,
    required this.workArrangement,
    required this.matchLabel,
    required this.matchDescription,
    required this.matchStrength,
    required this.brandColor,
  });

  final String id;
  final String title;
  final String company;
  final String initials;
  final String location;
  final String experience;
  final String employmentType;
  final String posted;
  final String workArrangement;
  final String matchLabel;
  final String matchDescription;
  final int matchStrength;
  final Color brandColor;
}
