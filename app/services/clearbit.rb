require 'clearbit'


class ClearbitAPI
  def self.call(user)
   result = Clearbit::Enrichment.find(email: user.email, stream: true)
    if person = result.person
      puts "Name: #{person.name.full_name}"
    end
  end
end
