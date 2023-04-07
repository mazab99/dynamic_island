import 'package:flutter/material.dart';

import '../../widgets/call_collapsed.dart';
import '../../widgets/call_expanded.dart';
import '../../widgets/location_collapsed.dart';
import '../../widgets/location_expanded.dart';
import '../../widgets/music_collapsed.dart';
import '../../widgets/music_expanded.dart';

class ViewModel {
  final Widget collapsedViews;
  final Widget expandedViews;
  double expandedHeight;
  double expandedBorderRadius;

  ViewModel({
    required this.collapsedViews,
    required this.expandedViews,
    this.expandedHeight = 200,
    this.expandedBorderRadius = 20.0,
  });
}

final List<ViewModel> views = [
  ViewModel(
    collapsedViews: const MusicCollapsed(),
    expandedViews: const MusicExpanded(),
    expandedHeight: 180,
    expandedBorderRadius: 40,
  ),
  ViewModel(
    collapsedViews: const CallCollapsed(),
    expandedViews: const CallExpanded(),
    expandedHeight: 80,
    expandedBorderRadius: 40,
  ),
  ViewModel(
    collapsedViews: const LocationCollapsed(),
    expandedViews: const LocationExpanded(),
    expandedHeight: 180,
    expandedBorderRadius: 40,
  )
];
