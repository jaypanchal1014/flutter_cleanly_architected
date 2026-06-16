abstract class UserRepository {
  Future<void> getAll();

  Future<void> getById(String id);

  Future<void> create();

  Future<void> update();

  Future<void> delete(String id);
}
