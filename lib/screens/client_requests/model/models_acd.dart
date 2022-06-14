import 'package:flutter/material.dart';

class ModelAcd {
  final String textAcd;
  final String textStatus;
  final int acdStatus;

  ModelAcd(this.textAcd, this.textStatus, this.acdStatus);
}

class ModelItem {
  final String itemLabal;
  final String numAcd;
  final Color colors;
  final VoidCallback onClik;

  ModelItem(this.itemLabal, this.numAcd, this.colors, this.onClik);
}
