def nyc_pigeon_organizer(data)

  pigeon_list = {}

  data.each do |collection, attributes|
    attributes.each do |attributes, type|
      type.each do |name|
        pigeon_list[name] = {
          :color => [],
          :gender => [],
          :lives => []
        }
      end
    end
  end

  data[:color].each do |color, name|
    name.each do |name|
      pigeon_list.each do |bird, attributes|
        if name == bird
            pigeon_list[bird][:color] << color.to_s
        end
      end
    end
  end

  data[:gender].each do |gender, name|
    name.each do |name|
      pigeon_list.each do |bird, attributes|
        if name == bird
            pigeon_list[bird][:gender] << gender.to_s
        end
      end
    end
  end

  data[:lives].each do |lives, name|
    name.each do |name|
      pigeon_list.each do |bird, attributes|
        if name == bird
            pigeon_list[bird][:lives] << lives.to_s
        end
      end
    end
  end

  pp pigeon_list
end
