include_recipe "apt"
include_recipe "build-essential"
include_recipe "nodejs"
include_recipe "mongodb-10gen::default"

# Install node packages
bash "Install node packages" do
    code <<-EOH
    npm install -g express
    npm install -g mongodb
    EOH
end
