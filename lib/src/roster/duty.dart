// Copyright 2020, the Rotate project authors. Please see the AUTHORS file
// for details. All rights reserved.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rotate/src/user/user.dart';

/// Something that's being tracked, e.g. Hours Slept, Cups of water, etc.
class Duty {
  static final DateFormat dateFormat = DateFormat("ddMMMyy");

  DateTime? date;
}