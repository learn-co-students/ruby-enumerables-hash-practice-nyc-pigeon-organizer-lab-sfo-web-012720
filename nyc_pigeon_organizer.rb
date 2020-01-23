require 'pp'

def nyc_pigeon_organizer(data)
  
  output = {}
  names = collect_names(data)
  
  for name in names do
    
    output[name] = {} 
    output[name] = collect_colors(data, output[name], name)
    output[name] = collect_gender(data, output[name], name)
    output[name] = collect_lives(data, output[name], name)
    
  end
  
  output
  
end



def collect_names(data)
  
  names = []
  
  for item in data[:gender]
      
    names += item[1]
      
  end
  
  names
  
end



def collect_colors(data, pigeon, name)
  
  pigeon[:color] = []
  
  for item in data[:color]
  
    for id in item[1]
    
      if id == name 
        
        pigeon[:color].push(item[0].to_s)
        
      end
    
    end
  
  end
  
  pigeon

end



def collect_gender(data, pigeon, name)
  
  pigeon[:gender] = []
  
  for item in data[:gender]
  
    for id in item[1]
    
      if id == name
        
        pigeon[:gender].push(item[0].to_s)
        
      end
      
    end
    
  end
  
  pigeon
  
end

def collect_lives(data, pigeon, name)
  
  pigeon[:lives] = []
  
  for item in data[:lives]
  
    for id in item[1]
    
      if id == name
        
        pigeon[:lives].push(item[0].to_s)
        
      end
      
    end
    
  end
  
  pigeon
  
end