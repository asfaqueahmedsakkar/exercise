class Apis {
  Apis._();

  static const String _base = "https://api.mail.tm";

  static const String domainList = "$_base/domains?page=1";
  static const String account = "$_base/accounts";

  static String messageList(int id) => "$_base/messages?page=$id";
  static String messageDetails(int id) => "$_base/messages/$id";
}