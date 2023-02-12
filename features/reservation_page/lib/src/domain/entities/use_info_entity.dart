class UserInfoEntity {
  final String name;
  final String email;

  /// Telefone com DDD
  final String phone; //TODO: Adicionar maskara para numero de telefone (evita que as pessoas digitem errado)
  
  UserInfoEntity({
    required this.name,
    required this.email,
    required this.phone,
  });
}
