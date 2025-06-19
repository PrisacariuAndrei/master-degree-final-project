enum RoutePath {
  // Routes with absolute paths (start with '/')
  root(path: '/'),
  home(path: '/home'),
  login(path: '/login'),
  register(path: '/register'),
  studyPrograms(path: '/studyPrograms'),

  // Routes with relative paths (no leading '/')

  // Add new routes above this line
  ;

  const RoutePath({required this.path});

  final String path;
}
