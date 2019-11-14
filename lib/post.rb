class Post
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
  
  def author_name
    self.author.nil? nil : self.author.name
  end
  
end



  describe '#author_name' do
    it 'knows the name of its author' do
      sophie = Author.new('Sophie')
      post.author = sophie
      expect(post.author_name).to eq('Sophie')
    end

    it 'returns nil if the post does not have an author' do
      expect(post.author_name).to eq nil
    end
  end
  # binding.pry
end