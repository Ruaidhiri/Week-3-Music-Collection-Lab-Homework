require_relative('../db/sql_runner')
require_relative('artist')

class Album

attr_accessor()
attr_reader()

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
  end






end
