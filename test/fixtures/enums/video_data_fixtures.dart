enum VideoDataFixtures {
  single('json/video_data_fixtures.json'),
  all('json/video_list_fixtures.json');

  const VideoDataFixtures(this.value);

  final String value;
}
