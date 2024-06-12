 
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:tap/cubit/vehicel_cubit.dart';
 
// class VehicleInventoryCubit extends Cubit<VehicleInventoryState> {
//   VehicleInventoryCubit() : super(VehicleInventoryState.initial());
 
//   final TextEditingController searchTextController = TextEditingController();
//   final TextEditingController goToPageController = TextEditingController();
 
//   void onBrandNameChanged(String? value) {
//     emit(
//       state.copyWith(
//         brandName: state.brandName.copyWith(
//           error: '',
//           value: value,
//         ),
//       ),
//     );
//     checkFiltersActive();
//   }
 
//   void onModelNameChanged(String? value) {
//     emit(
//       state.copyWith(
//         modelName: state.modelName.copyWith(
//           error: '',
//           value: value,
//         ),
//       ),
//     );
//     checkFiltersActive();
//   }
 
//   void onColorChanged(String? value) {
//     emit(
//       state.copyWith(
//         color: state.color.copyWith(
//           error: '',
//           value: value,
//         ),
//       ),
//     );
//     checkFiltersActive();
//   }
 
//   void onCategoryChanged(String? value) {
//     emit(
//       state.copyWith(
//         category: state.category.copyWith(
//           error: '',
//           value: value,
//         ),
//       ),
//     );
//     checkFiltersActive();
//   }
 
//   void onBatteryStatusChanged(String? value) {
//     emit(
//       state.copyWith(
//         batteryStatus: state.batteryStatus.copyWith(
//           error: '',
//           value: value,
//         ),
//       ),
//     );
//     checkFiltersActive();
//   }
 
//   void onStatusChanged(String? value) {
//     emit(
//       state.copyWith(
//         status: state.status.copyWith(
//           error: '',
//           value: value,
//         ),
//       ),
//     );
//     checkFiltersActive();
//   }
 
//   void onLockStatusChanged(String? value) {
//     emit(
//       state.copyWith(
//         lockStatus: state.lockStatus.copyWith(
//           error: '',
//           value: value,
//         ),
//       ),
//     );
//     checkFiltersActive();
//   }
 
//   void onSearchTextChanged() {
//     emit(
//       state.copyWith(
//         searchText: state.searchText.copyWith(
//           error: '',
//           value: searchTextController.text.trim(),
//         ),
//       ),
//     );
//   }
 
//   void onGoToPageChanged() {
//     emit(
//       state.copyWith(
//         goToPage: state.goToPage.copyWith(
//           error: '',
//           value: goToPageController.text.trim(),
//         ),
//       ),
//     );
//   }
 
//   void onSortPropertyChanged(String? value) {
//     emit(
//       state.copyWith(
//         selectedSortProperty: value,
//       ),
//     );
//   }
 
//   void onItemsPerPageChanged(String? value) {
//     emit(
//       state.copyWith(
//         itemsPerPage: value,
//       ),
//     );
//   }
 
//   void onCurrentPageNumberChanged(String? value) {
//     emit(
//       state.copyWith(
//         currentPageNumber: value,
//       ),
//     );
//   }
 
//   void clearAllFilters() {
//     emit(
//       state.copyWith(
//         brandName: FieldState.initial(value: null),
//         modelName: FieldState.initial(value: null),
//         color: FieldState.initial(value: null),
//         category: FieldState.initial(value: null),
//         batteryStatus: FieldState.initial(value: null),
//         status: FieldState.initial(value: null),
//         lockStatus: FieldState.initial(value: null),
//         isFiltersButtonActive: false,
//       ),
//     );
//   }
 
//   bool checkFiltersActive() {
//     bool isActive = state.brandName.value != null ||
//         state.modelName.value != null ||
//         state.color.value != null ||
//         state.category.value != null ||
//         state.batteryStatus.value != null ||
//         state.status.value != null ||
//         state.lockStatus.value != null;
 
//     emit(state.copyWith(isFiltersButtonActive: isActive));
//     return isActive;
//   }
 
//   Future<void> onApplyFiltersButton() async {
//     if (checkFiltersActive()) {
//       AppRoutes.appRouter.pop();
//       checkFiltersActive();
//     }
//   }
 
//   Future<void> fetchVehicleInventory() async {}
// }
 
// has context menu


// has context menu