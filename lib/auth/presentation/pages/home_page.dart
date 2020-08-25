import 'package:boticario/auth/presentation/pages/auth/widgets/logout_icon/bloc/logout_bloc.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/logout_icon/logout_icon.dart';
import 'package:boticario/injection.dart';
import 'package:boticario/news/presentation/widgets/news_list/bloc/news_list_bloc.dart';
import 'package:boticario/news/presentation/widgets/news_list/news_list.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/presentation/widgets/user_post_list/bloc/user_post_list_bloc.dart';
import 'package:boticario/user/presentation/widgets/user_post_list/user_post_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  final User user;
  const HomePage({Key key, this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _tabIndex = 0;
  List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      BlocProvider(
        create: (context) =>
            getIt<NewsListBloc>()..add(NewsListEvent.started()),
        child: NewsList(),
      ),
      BlocProvider(
        create: (context) =>
            getIt<UserPostListBloc>()..add(UserPostListEvent.started()),
        child: UserPostList(
          currUser: widget.user,
        ),
      ),
    ];
  }

  void _changeTabIndex(int index) {
    _pageController.jumpToPage(index);
    _onPageChange(index);
  }

  void _onPageChange(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          BlocProvider(
            create: (context) => getIt<LogoutBloc>(),
            child: LogoutIcon(),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _changeTabIndex,
        children: _screens,
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _tabIndex,
      onTap: _changeTabIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.description),
          title: Text('News'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Posts'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        )
      ],
    );
  }
}
