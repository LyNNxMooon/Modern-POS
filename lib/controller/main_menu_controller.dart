// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/base_controller.dart';
import 'package:modern_pos/data/model.dart';
import 'package:modern_pos/data/vos/category_vo/category_vo.dart';
import 'package:modern_pos/data/vos/item_vo/item_vo.dart';
import 'package:modern_pos/utils/enum.dart';
import 'package:modern_pos/widgets/error_widget.dart';

class MainMenuController extends BaseController {
  RxList<CategoryVO> categoryList = <CategoryVO>[].obs;
  RxList<ItemVO> items = <ItemVO>[].obs;
  Rxn<ItemVO> detailedItem = Rxn<ItemVO>();
  int page = 1;

  final _model = Model();

  getCategories(BuildContext context) {
    categoryList.clear();
    setLoadingState = LoadingState.loading;
    _model.getCategories().then(
      (value) {
        categoryList.value = value;
        setLoadingState = LoadingState.complete;
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        context: context,
        builder: (context) => CustomErrorWidget(
            errorMessage: getErrorMessage,
            function: () {
              Get.back();
            }),
      );
    });
  }

  getItemDetails(BuildContext context, int id) {
    setLoadingState = LoadingState.loading;
    _model.getItemDetails(id).then(
      (value) {
        detailedItem.value = value;
        setLoadingState = LoadingState.complete;
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        context: context,
        builder: (context) => CustomErrorWidget(
            errorMessage: getErrorMessage,
            function: () {
              Get.back();
            }),
      );
    });
  }

  getItems(BuildContext context) {
    items.clear();
    setLoadingState = LoadingState.loading;
    _model.getItems(page, 10).then(
      (value) {
        items.value = value.data;
        if (value.loadMore && page <= value.total) {
          page++;
        } else {
          page = 1;
        }

        setLoadingState = LoadingState.complete;
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        context: context,
        builder: (context) => CustomErrorWidget(
            errorMessage: getErrorMessage,
            function: () {
              Get.back();
            }),
      );
    });
  }

  getItemsByCategory(BuildContext context, int categoryID) {
    items.clear();
    setLoadingState = LoadingState.loading;
    _model.getItemsByCategory(page, 10, categoryID).then(
      (value) {
        items.value = value.data;
        if (value.loadMore && page <= value.total) {
          page++;
        } else {
          page = 1;
        }

        setLoadingState = LoadingState.complete;
      },
    ).catchError((error) {
      setLoadingState = LoadingState.error;
      setErrorMessage = error;
      showDialog(
        context: context,
        builder: (context) => CustomErrorWidget(
            errorMessage: getErrorMessage,
            function: () {
              Get.back();
            }),
      );
    });
  }
}
