import 'package:auto_route/auto_route.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/injection.dart';
import 'package:boticario/strings.dart';
import 'package:boticario/user/domain/entities/user_post_list_item.dart';
import 'package:boticario/user/presentation/widgets/new_post/bloc/new_post_bloc.dart';
import 'package:boticario/user/presentation/widgets/new_post/new_post.dart';
import 'package:boticario/user/presentation/widgets/user_post_item/bloc/user_post_item_bloc.dart';
import 'package:flutter/material.dart';
import 'package:boticario/common/presentation/utils/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostItem extends StatefulWidget {
  final UserPostListItem item;
  final Function onRemove;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const UserPostItem({
    Key key,
    @required this.item,
    @required this.onRemove,
    @required this.scaffoldKey,
  }) : super(key: key);

  @override
  _UserPostItemState createState() => _UserPostItemState();
}

class _UserPostItemState extends State<UserPostItem> {
  UserPostListItem _item;

  @override
  void initState() {
    super.initState();
    _item = widget.item;
  }

  void _deleteItem(BuildContext context) {
    context
        .bloc<UserPostItemBloc>()
        .add(UserPostItemEvent.onRemove(_item.post.id));
  }

  void _editItem(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider(
        create: (context) => getIt<NewPostBloc>(),
        child: NewPost(
            scaffoldKey: widget.scaffoldKey,
            currentId: _item.post.id,
            currentPost: _item.post.post,
            isNew: false,
            onEdit: (user) {
              setState(() {
                _item =
                    _item.copyWith(post: _item.post.copyWith(post: user.post));
              });
            }),
      ),
    );
  }

  void _showConfirmDialog(BuildContext mainContext) {
    showDialog(
      context: mainContext,
      builder: (context) => AlertDialog(
        title: Text(Strings.confirmation),
        content: Text(Strings.confirmationQuestion),
        actions: [
          FlatButton(
            onPressed: () => ExtendedNavigator.of(context).pop(),
            child: Text(
              Strings.no.toUpperCase(),
            ),
          ),
          FlatButton(
            onPressed: () => _deleteItem(mainContext),
            child: Text(
              Strings.yes.toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }

  void _popModal(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _onSuccessRemove(BuildContext context) {
    _popModal(context);
    widget.onRemove();
  }

  void _showError(String error) => widget.scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(error),
          duration: Duration(seconds: 2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserPostItemBloc, UserPostItemState>(
      listener: (blocContext, state) => state.maybeMap(
        orElse: () => null,
        successRemove: (_) => _onSuccessRemove(context),
        error: (e) => _showError(e.error),
      ),
      child: Container(
        height: 200,
        width: double.infinity,
        child: Card(
          child: Stack(
            fit: StackFit.expand,
            children: [
              _buildItensCard(context),
              _buildCardContent(context),
              _buildCreatedAtLabel()
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildCreatedAtLabel() {
    return Positioned(
      bottom: kvpading,
      right: khpading,
      child: Text(
        _item.post.created_at.inLocalString,
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    );
  }

  Positioned _buildItensCard(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () => _editItem(context),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => _showConfirmDialog(context),
          ),
        ],
      ),
    );
  }

  Column _buildCardContent(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kvpading * 2,
        ),
        Text(
          _item.name,
          style: Theme.of(context).textTheme.headline6,
        ),
        Expanded(child: Center(child: Text(_item.post.post))),
      ],
    );
  }
}
