ActiveRecord::Base.establish_connection(
    :adapter  => "postgresql",
    :database => "moma_db",
    :host     => "/var/run/postgresql",
    :username => "infinity",
    :password => "Gr8ness&me!"
)
