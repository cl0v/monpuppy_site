// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_banner_carroulsel_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PetBannerCarroulselController
    on PetBannerCarroulselControllerBase, Store {
  late final _$imageIndexAtom = Atom(
      name: 'PetBannerCarroulselControllerBase.imageIndex', context: context);

  @override
  int get imageIndex {
    _$imageIndexAtom.reportRead();
    return super.imageIndex;
  }

  @override
  set imageIndex(int value) {
    _$imageIndexAtom.reportWrite(value, super.imageIndex, () {
      super.imageIndex = value;
    });
  }

  late final _$PetBannerCarroulselControllerBaseActionController =
      ActionController(
          name: 'PetBannerCarroulselControllerBase', context: context);

  @override
  void onGoToPage(int pageIndex) {
    final _$actionInfo = _$PetBannerCarroulselControllerBaseActionController
        .startAction(name: 'PetBannerCarroulselControllerBase.onGoToPage');
    try {
      return super.onGoToPage(pageIndex);
    } finally {
      _$PetBannerCarroulselControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void onNextIndexPressed() {
    final _$actionInfo =
        _$PetBannerCarroulselControllerBaseActionController.startAction(
            name: 'PetBannerCarroulselControllerBase.onNextIndexPressed');
    try {
      return super.onNextIndexPressed();
    } finally {
      _$PetBannerCarroulselControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic onPreviousIndexPressed() {
    final _$actionInfo =
        _$PetBannerCarroulselControllerBaseActionController.startAction(
            name: 'PetBannerCarroulselControllerBase.onPreviousIndexPressed');
    try {
      return super.onPreviousIndexPressed();
    } finally {
      _$PetBannerCarroulselControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageIndex: ${imageIndex}
    ''';
  }
}
