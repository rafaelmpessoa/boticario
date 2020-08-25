import 'package:boticario/common/presentation/widgets/generic_error.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/injection.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/entities/user_post_list_item.dart';
import 'package:boticario/user/presentation/widgets/new_post/bloc/new_post_bloc.dart';
import 'package:boticario/user/presentation/widgets/new_post/new_post.dart';
import 'package:boticario/user/presentation/widgets/user_post_item/bloc/user_post_item_bloc.dart';
import 'package:boticario/user/presentation/widgets/user_post_item/user_post_item.dart';
import 'package:boticario/user/presentation/widgets/user_post_list/bloc/user_post_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostList extends StatefulWidget {
  final User currUser;

  const UserPostList({Key key, @required this.currUser}) : super(key: key);
  @override
  _UserPostListState createState() => _UserPostListState();
}

class _UserPostListState extends State<UserPostList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  final List<UserPostListItem> _loadedList = [];

  void _insert(UserPostListItem element) {
    _loadedList.insert(_loadedList.length, element);

    _listKey.currentState.insertItem(_loadedList.length - 1);
  }

  void _remove(int index) {
    _listKey.currentState.removeItem(index, (context, animation) {
      animation.addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _loadedList.removeAt(_loadedList.indexOf(_loadedList[index]));
        }
      });
      return _buildListItem(animation, index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: BlocConsumer<UserPostListBloc, UserPostListState>(
        listener: (context, state) => state.maybeMap(
          orElse: () => null,
          loaded: (s) => _loadedList.addAll(s.userPost),
        ),
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loading: (_) => Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (s) => AnimatedList(
            key: _listKey,
            initialItemCount: _loadedList.length ?? 0,
            padding: EdgeInsets.symmetric(horizontal: khpading),
            itemBuilder: (context, index, animation) =>
                _buildListItem(animation, index),
          ),
          error: (e) => GenericError(
            bloc: context.bloc<UserPostListBloc>(),
            event: e.event,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _buildAddDialog(context),
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
      ),
    );
  }

  BlocProvider<UserPostItemBloc> _buildListItem(
      Animation<double> animation, int index) {
    return BlocProvider(
      create: (context) => getIt<UserPostItemBloc>(),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset(1, 0),
          end: Offset(0, 0),
        ).animate(animation),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kvpading / 2),
          child: UserPostItem(
            item: _loadedList[index],
            scaffoldKey: _scaffoldKey,
            onRemove: () => _remove(index),
          ),
        ),
      ),
    );
  }

  Future _buildAddDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => BlocProvider(
        create: (context) => getIt<NewPostBloc>(),
        child: NewPost(
          scaffoldKey: _scaffoldKey,
          onCreated: (e) => _insert(
            UserPostListItem(
              name: widget.currUser.name,
              post: e,
            ),
          ),
        ),
      ),
    );
  }
}
