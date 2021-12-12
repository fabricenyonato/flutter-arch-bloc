import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_view.freezed.dart';

enum NavigationItemId {
  store,
  blog,
}

class NavigationItemData {
  final NavigationItemId id;
  final String label;
  final IconData icon;

  const NavigationItemData({
    required this.id,
    required this.label,
    required this.icon,
  });
}

@freezed
class MainPageData with _$MainPageData {
  const factory MainPageData({
    required NavigationItemId currentNavigationId,
    required List<NavigationItemData> navigationItems,
  })
    = _MainPageData;
}

typedef NavigationItemTapCallback = void Function(NavigationItemId);

class _NavigationItem extends StatelessWidget {
  final NavigationItemData data;
  final NavigationItemTapCallback onTap;
  final bool seleted;

  const _NavigationItem({
    Key? key,
    required this.data,
    required this.onTap,
    required this.seleted,
  })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(data.id),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              data.icon,
              size: 24,
            ),

            Text(
              data.label,
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  final List<NavigationItemData> items;
  final NavigationItemId currentItemId;
  final NavigationItemTapCallback onItemTap;

  const _Navigation({
    Key? key,
    required this.items,
    required this.onItemTap,
    required this.currentItemId,
  })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight,
      color: Colors.grey.shade200,
      child: Row(
        children: [
          for (final item in items)
            _NavigationItem(
              data: item,
              onTap: onItemTap,
              seleted: item.id == currentItemId,
            )
        ],
      ),
    );
  }
}

const _navigationItems = [
  NavigationItemData(
    id: NavigationItemId.store, 
    label: 'Store',
    icon: Icons.store,
  ),

  NavigationItemData(
    id: NavigationItemId.blog, 
    label: 'Blog', 
    icon: Icons.article
  ),
];

const defaultMainPageData = MainPageData(
  currentNavigationId: NavigationItemId.store,
  navigationItems: _navigationItems
);

class MainPageView extends StatelessWidget {
  final MainPageData data;
  final NavigationItemTapCallback onNavigationItemTap;
  final Widget child;

  const MainPageView({
    Key? key,
    required this.data,
    required this.onNavigationItemTap,
    required this.child,
   })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final body = Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: child,
    );

    return Scaffold(
      body: body,
      bottomNavigationBar: _Navigation(
        items: data.navigationItems,
        onItemTap: onNavigationItemTap,
        currentItemId: data.currentNavigationId,
      ),
    );
  }
}
