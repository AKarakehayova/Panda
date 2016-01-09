class Panda
  attr_accessor :name, :email, :gender, :friends
  def initialize(name, email, gender)
    @name = name
    @email = email
    @gender = gender
    @friends = []
  end

  def male?
    if gender == "male"
      true
    else false
    end
  end

  def female?
    if gender == "female"
      true
    else false
    end
  end

  def to_s(panda)
    "#{panda.name}, #{panda.email}, #{panda.gender}"
  end

  def ==(panda)
    name == panda.name && email == panda.email && gender == panda.gender
  end

  def hash
    panda.email.hash
  end
end

class SocialNetwork
  attr_accessor :members
  def initialize
    @members = {}
  end

  def add_panda(panda)
    if members.include? panda
      raise PandaAlreadyThere, "This panda already exists in the network."
    else members[panda] = panda.friends
    end
  end

  def has_panda(panda)
    members.key? panda
  end

  def make_friends(panda1, panda2)
    if !has_panda panda1
      add_panda panda1
    elsif !had_panda panda2
      add_panda panda2
    end

    if panda1.friends.include? panda2
      raise PandasAlreadyFriends, "These pandas are already friends"
    else
    panda1.friends.push(panda2)
    panda2.friends.push(panda1)
    end
  end
end

class PandaAlreadyThere < StandardError
end

class PandasAlreadyFriends < StandardError
end

