import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';
import 'package:grab_clone/database/database.dart';
import 'package:grab_clone/model/contact_model.dart';

class EmergencyAddContactBloc extends Bloc {
  final _controller = StreamController<ContactModel>();
  late Stream<ContactModel> result;

  EmergencyAddContactBloc() {
    bindingController();
  }
  @override
  void bindingController() {
    result = _controller.stream.map((event) => event);
  }

  @override
  void dispose() {
    _controller.close();
  }

  void addNewContact(ContactModel newContact) {
    _controller.notifyValue(DBProvider.db.newContact(newContact));
  }
}
