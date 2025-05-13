import 'package:medidor_humor/models/humor.dart';

class HumorController {
  final Humor _humor =  Humor();
  // Getter para o nivel do humor
  int get nivel => _humor.getNivel();
}