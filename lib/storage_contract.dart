library storage_contract;

/// This storage contract only maintain data, include saving, deleting, updating,
/// and querying from local database/storage
abstract class StorageContract<T> {
  /// returns boolean to let them know that this command is successfully executed
  /// set to [true] when processes inside do not really returns boolean values
  Future<bool> save(T item);

  /// returns boolean to let them know that this command is successfully executed
  /// set to [true] when processes inside do not really returns boolean values
  Future<bool> clear();

  /// retrieve data from local storage and returns [T] object
  Future<T> get();
}
