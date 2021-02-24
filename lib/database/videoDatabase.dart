class VideoDatabase {
  List<Map<String, String>> BECE1 = [
    {
      'Neso Academy':
          'https://www.youtube.com/playlist?list=PLBlnK6fEyqRiw-GZRqfnlVIBz9dxrqHJS'
    },
    {
      'All about Electronics':
          'https://www.youtube.com/playlist?list=PLwjK_iyK4LLBj2yTYPYKFKdF6kIg0ccP2'
    },
    {'NPTEL': 'https://www.youtube.com/watch?v=TXjHWGngsME'},
    {'NPTEL Applications': 'https://www.youtube.com/watch?v=qhXZuVFhVzo'},
  ];
  List<Map<String, String>> BECE2 = [
    {
      'Neso Academy':
          'https://www.youtube.com/playlist?list=PLG99TJz7QrIWjqJwfaKYb_T8Qqqls-KiN'
    },
    {
      'All about Electronics':
          'https://www.youtube.com/playlist?list=PLwjK_iyK4LLDoFG8FeiKAr3IStRkPSxqq'
    },
    // {'NPTEL': 'https://www.youtube.com/watch?v=TXjHWGngsME'},
    // {'NPTEL Applications': 'https://www.youtube.com/watch?v=qhXZuVFhVzo'},
  ];
  List<Map<String, String>> BECE3 = [
    {
      'Neso Academy':
          'https://www.youtube.com/playlist?list=PLBlnK6fEyqRiw-GZRqfnlVIBz9dxrqHJS'
    },
    {
      'All about Electronics':
          'https://www.youtube.com/playlist?list=PLwjK_iyK4LLBj2yTYPYKFKdF6kIg0ccP2'
    },
    // {'NPTEL': 'https://www.youtube.com/watch?v=TXjHWGngsME'},
    // {'NPTEL Applications': 'https://www.youtube.com/watch?v=qhXZuVFhVzo'},
  ];
  List<Map<String, String>> BECE4 = [
    {
      'Neso Academy':
          'https://www.youtube.com/playlist?list=PLBlnK6fEyqRiw-GZRqfnlVIBz9dxrqHJS'
    },
    {
      'All about Electronics':
          'https://www.youtube.com/playlist?list=PLwjK_iyK4LLBj2yTYPYKFKdF6kIg0ccP2'
    },
    {
      'Easy Engineering classes':
          'https://www.youtube.com/playlist?list=PLV8vIYTIdSnbLjHPYh02qjw8D9HAvhB0L'
    },
    // {'NPTEL Applications': 'https://www.youtube.com/watch?v=qhXZuVFhVzo'},
  ];
  List<Map<String, String>> BECE5 = [
    {
      'Neso Academy':
          'https://www.youtube.com/playlist?list=PLBlnK6fEyqRiw-GZRqfnlVIBz9dxrqHJS'
    },
    {
      'All about Electronics':
          'https://www.youtube.com/playlist?list=PLwjK_iyK4LLBj2yTYPYKFKdF6kIg0ccP2'
    },
    // {'NPTEL': 'https://www.youtube.com/watch?v=TXjHWGngsME'},
    // {'NPTEL Applications': 'https://www.youtube.com/watch?v=qhXZuVFhVzo'},
  ];
  List getList(String subject, int module) {
    if (subject == 'BECE') {
      if (module == 1) return BECE1;
      if (module == 2) return BECE2;
      if (module == 3) return BECE3;
      if (module == 4) return BECE4;
      if (module == 5) return BECE5;
    }
    if (subject == 'BME') {
      // For testing purpose
      if (module == 1) return BECE1;
      if (module == 2) return BECE2;
      if (module == 3) return BECE3;
      if (module == 4) return BECE4;
      if (module == 5) return BECE5;
    }
  }
}

// '' : '',
