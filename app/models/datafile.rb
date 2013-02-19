class Datafile < ActiveRecord::Base
  def persistFileParam=(file)
    logger.debug "From Model: #{file.inspect}"
    
    if not file.nil?
      write_attribute("filename", file.original_filename)
      #self.data = file.read
    end
  end
  
  def saveFile=(binary)
    if not binary.nil?
      File.open(Rails.root.join('public', 'uploads', binary.original_filename), 'w') do |file|
      file.write(binary.read)
      end
    end
  end
end
