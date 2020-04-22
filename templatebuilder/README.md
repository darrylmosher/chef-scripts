# templatebuilder.sh
This script outputs all of the variables in a template.erb file into a recipe ready syntax

## Usage

```bash
./templatebuilder.sh /path/to/your/template.erb
```

### Example template.erb

```ruby
<%= @rails_env %>
text 1
text 2
<%= @attribute1 %>
<%= @attribute2 %>
text 3
<%= @attribute3 %>
```

### Output

```ruby
	  variables(
 	 	 :attribute1 => '',
 	 	 :attribute2 => '',
 	 	 :attribute3 => '',
 	  )
```

### Example Recipe

```ruby
    template 'etc/file' do 
    source 'template.erb'
    mode 0644
    variables(
      :attribute1 => '',
 	  :attribute2 => '',
 	  :attribute3 => '',
)
```