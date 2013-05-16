# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Demoproject::Application.initialize!

Time::DATE_FORMATS[:due_time] = "due on %B %d at %I:%M %p"
