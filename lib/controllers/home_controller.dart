import 'package:get/state_manager.dart';
import 'package:getx_demo/api/users_api.dart';
import 'package:getx_demo/models/user.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/pages/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;

  int get counter => _counter;
  bool get loading => _loading;
    List<User> get users => _users;
  @override
  void onInit() {
    super.onInit();
    print("same as initState");
  }

  @override
  void onReady() {
    super.onReady();
    print("same as onReady");
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    this._users = data;
    update(['users']);
    this._loading = false;
  }

  void increment (){
    this._counter++;
    update(['text'],_counter>=10 );
  }

  Future <void> showUserProfile(User user) async{
    final result = await Get.to<String>(ProfilePage(), arguments: user);

    if(result != null){
    print("result $result");
    }
  }
}