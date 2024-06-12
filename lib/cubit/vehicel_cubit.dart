// import 'package:equatable/equatable.dart';

// class VehicleInventoryState extends Equatable {
//   final FieldState<String?> brandName;
//   final FieldState<String?> modelName;
//   final FieldState<String?> color;
//   final FieldState<String?> category;
//   final FieldState<String?> batteryStatus;
//   final FieldState<String?> status;
//   final FieldState<String?> lockStatus;
//   final FieldState<String?> searchText;
//   final FieldState<String?> goToPage;
//   final String? selectedSortProperty;
//   final String? itemsPerPage;
//   final String? currentPageNumber;
//   final bool isFiltersButtonActive;

//   const VehicleInventoryState({
//     required this.brandName,
//     required this.modelName,
//     required this.color,
//     required this.category,
//     required this.batteryStatus,
//     required this.status,
//     required this.lockStatus,
//     required this.searchText,
//     required this.goToPage,
//     required this.selectedSortProperty,
//     required this.itemsPerPage,
//     required this.currentPageNumber,
//     required this.isFiltersButtonActive,
//   });

//   factory VehicleInventoryState.initial() {
//     return VehicleInventoryState(
//       brandName: FieldState.initial(value: null),
//       modelName: FieldState.initial(value: null),
//       color: FieldState.initial(value: null),
//       category: FieldState.initial(value: null),
//       batteryStatus: FieldState.initial(value: null),
//       status: FieldState.initial(value: null),
//       lockStatus: FieldState.initial(value: null),
//       searchText: FieldState.initial(value: ''),
//       goToPage: FieldState.initial(value: ''),
//       selectedSortProperty: null,
//       itemsPerPage: null,
//       currentPageNumber: null,
//       isFiltersButtonActive: false,
//     );
//   }

//   VehicleInventoryState copyWith({
//     FieldState<String?>? brandName,
//     FieldState<String?>? modelName,
//     FieldState<String?>? color,
//     FieldState<String?>? category,
//     FieldState<String?>? batteryStatus,
//     FieldState<String?>? status,
//     FieldState<String?>? lockStatus,
//     FieldState<String?>? searchText,
//     FieldState<String?>? goToPage,
//     String? selectedSortProperty,
//     String? itemsPerPage,
//     String? currentPageNumber,
//     bool? isFiltersButtonActive,
//   }) {
//     return VehicleInventoryState(
//       brandName: brandName ?? this.brandName,
//       modelName: modelName ?? this.modelName,
//       color: color ?? this.color,
//       category: category ?? this.category,
//       batteryStatus: batteryStatus ?? this.batteryStatus,
//       status: status ?? this.status,
//       lockStatus: lockStatus ?? this.lockStatus,
//       searchText: searchText ?? this.searchText,
//       goToPage: goToPage ?? this.goToPage,
//       selectedSortProperty: selectedSortProperty ?? this.selectedSortProperty,
//       itemsPerPage: itemsPerPage ?? this.itemsPerPage,
//       currentPageNumber: currentPageNumber ?? this.currentPageNumber,
//       isFiltersButtonActive:
//           isFiltersButtonActive ?? this.isFiltersButtonActive,
//     );
//   }

//   @override
//   List<Object?> get props => [
//         brandName,
//         modelName,
//         color,
//         category,
//         batteryStatus,
//         status,
//         lockStatus,
//         searchText,
//         goToPage,
//         selectedSortProperty,
//         itemsPerPage,
//         currentPageNumber,
//         isFiltersButtonActive,
//       ];
// }
