// Copyright 2020, the Rotate project authors. Please see the AUTHORS file
// for details. All rights reserved.

import 'package:flutter/material.dart';
import 'package:rotate/src/roster/crewMember.dart';
import 'package:rotate/src/roster/duty.dart';
import 'package:rotate/src/user/user.dart';

/// Something that's being tracked, e.g. Hours Slept, Cups of water, etc.
class Roster {
  User user = User();

  String? baseLocator;
  String? name;
  String? pkNumber;

  DateTime? generationTime;
  DateTimeRange? dateRange;

  Iterable<Duty> dutyList = Iterable.empty();
  Iterable<CrewMember> crewMemberList = Iterable.empty();
}
