require 'pry'

def nyc_pigeon_organizer(data)
  resHash = {}
  
    data.each do |att, hash|
        hash.each do |trait, array|
            array.each do |name|
                if !resHash.has_key?(name)
                    resHash[name] = {}
                end

                if !resHash[name].has_key?(att)
                    resHash[name][att] = []
                end

                if !resHash[name][att].include?(att)
                    resHash[name][att] << trait.to_s
                end
            end
        end
    end
    resHash
end

