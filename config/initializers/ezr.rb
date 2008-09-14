# Read global config
EZR_GLOBAL_CONFIG = YAML.load(File.read(RAILS_ROOT + "/app/ezr/global/config/sites_config.yml"))

configs = ["main"]
temp_config = {}

Dir.foreach(RAILS_ROOT + "/app/ezr/sites") do |dir|
  unless [".", ".."].include?(dir)
    for current_config in configs
      file_name = RAILS_ROOT + "/app/ezr/sites/#{dir}/config/#{current_config}_config.yml"
      if File.exists?(file_name)
        #puts "Reading #{current_config}_config.yml in #{dir}"
        raw_config = File.read(file_name)
        temp_config.merge!({dir.to_sym => YAML.load(raw_config)})
      end
    end
  end
end

EZR_FULL_CONFIG = temp_config
