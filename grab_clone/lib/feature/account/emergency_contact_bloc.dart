import 'dart:async';
import 'package:grab_clone/bloc/bloc.dart';
import 'package:grab_clone/model/contact_model.dart';
import 'package:grab_clone/database/connector/contact_connector.dart';

class EmergencyContactBloc extends Bloc {
  final _controller = StreamController<List<ContactModel>>();
  late Stream<List<ContactModel>> result;

  EmergencyContactBloc() {
    bindingController();
    _fetchContactData();
  }
  @override
  void bindingController() {
    result = _controller.stream.map((event) => event);
  }

  @override
  void dispose() {
    _controller.close();
  }

  void _fetchContactData() {
    getAllContacts().then((value) => _controller.notifyValue(value));
  }
}
