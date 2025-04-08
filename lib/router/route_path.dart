enum RoutePath {
  // Routes with absolute paths (start with '/')
  root(path: '/'),
  home(path: '/home'),
  studyPrograms(path: '/studyPrograms'),
  announcement(path: '/announcement/:data'),

  // Routes with relative paths (no leading '/')

  // Add new routes above this line
  ;

  const RoutePath({required this.path});

  final String path;
}
