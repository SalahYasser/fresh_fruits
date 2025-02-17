abstract class DataBaseService {
  Future<void> addDate({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });

  Future<Map<String, dynamic>> getDate(
      {required String path, required String documentId});
}
