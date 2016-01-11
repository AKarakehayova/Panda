class Social_network

	@network = {}

 def add_panda(panda)
	@network[Panda] = []
 end

 def has_panda(panda)
	if @network.has_key?(panda)
		true
    else
    false
    end
 end

 def are_friends(panda1,panda2)
 	if @network[panda1].contains(panda2)
 		true
    else
    	false
      end
 end

 def make_friends(panda1, panda2)
 	if !@network.has_key?(panda1)
 		@network[panda1].push(panda2)
 	end
	if !@network.has_key(panda2)
	 	@network[panda2].push(panda1)
	 end 
	 panda1.friends.push(panda2)
	 panda2.friends.push(panda1)
 end

 def find_connection_level(panda1, panda2)
 	queue = Queue.Social_network
 	visited = []
 	queue << [panda1, 0]
 	visited << panda1

    while !queue.empty?
    	panda, level = queue.pop
    	panda.friends.each do |friend| 
    		queue << [panda, level + 1]
    	     visited << panda
    	     visited << panda
    	 end
    end
 end
end

class Panda

	@friends = []

	def initialize(name, gender, age, email)
	@name = name
	@gender = gender
	@email = email
	end

	def to_s
 	"#{@name}\n #{@mail} \n #{@gender}"
 end

 def hash
 	to_s.hash
 end

 def ==(other)
 	if hash == other.hash
 		true
 	else
 		false
 	end
 end
 
 alias_method :eql?,:==
 	
 def friends_of
 	friends
 end
end


