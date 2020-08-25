import 'package:auto_route/auto_route.dart';
import 'package:boticario/constant.dart';
import 'package:boticario/strings.dart';
import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/presentation/widgets/new_post/bloc/new_post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPost extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final Function(UserPost) onCreated;
  final Function(UserPost) onEdit;
  final bool isNew;
  final String currentPost;
  final String currentId;

  const NewPost({
    Key key,
    @required this.scaffoldKey,
    this.onCreated,
    this.onEdit,
    this.isNew = true,
    this.currentPost,
    this.currentId,
  }) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  void _pop(BuildContext context) => ExtendedNavigator.of(context).pop();

  TextEditingController _textController;

  final _formKey = GlobalKey<FormState>();

  void _showSnackBar(String text) =>
      widget.scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            text,
          ),
          duration: Duration(seconds: 2),
        ),
      );

  @override
  void initState() {
    _textController = TextEditingController(text: widget.currentPost);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NewPostBloc, NewPostState>(
      listener: (context, state) => state.map(
        initial: (_) => null,
        loading: (_) => null,
        success: (s) {
          _pop(context);
          _showSnackBar(
              widget.isNew ? Strings.postCreated : Strings.postUpdated);
          if (widget.isNew && widget.onCreated != null)
            widget.onCreated(s.post);
          if (!widget.isNew && widget.onEdit != null) widget.onEdit(s.post);
          return;
        },
        error: (e) => _showSnackBar(
          Strings.error + ": " + e.error,
        ),
      ),
      child: AlertDialog(
        title: Text(widget.isNew ? Strings.newPost : Strings.editPost),
        content: Form(
          key: _formKey,
          child: TextFormField(
            autofocus: true,
            controller: _textController,
            maxLength: 280,
            maxLines: 5,
            validator: (v) {
              if (v.isEmpty) {
                return Strings.emptyField;
              }
              return null;
            },
          ),
        ),
        actions: [
          FlatButton(
            color: Colors.red,
            onPressed: () => _pop(context),
            child: Text(Strings.close.toUpperCase()),
          ),
          FlatButton(
            color: kPrimaryColor,
            onPressed: () {
              if (_formKey.currentState.validate()) {
                context.bloc<NewPostBloc>().add(
                      widget.isNew
                          ? NewPostEvent.onSend(_textController.text)
                          : NewPostEvent.onEdit(
                              widget.currentId, _textController.text),
                    );
              }
            },
            child: BlocBuilder<NewPostBloc, NewPostState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => Text(
                    Strings.send.toUpperCase(),
                  ),
                  loading: (_) => Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
