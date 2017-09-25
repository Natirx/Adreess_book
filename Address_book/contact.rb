

def ask(question, kind="string")
    print question + " "
    answer = gets.chomp
    answer = answer.to_i if kind == "number"
    return answer
   end

  def add_contact
    contact = {"name" =>" ","phone_numbers" => []}
    contact["name"] = ask("what is the person's name?")
    answer = ""
    while answer != "n"
        answer = ask("do you wand to add a phone number(n/y)")
        if answer == "y"
            phone = ask("Enter a phone number:")
            contact["phone_numbers"].push(phone)
                 
        end
    end
    return contact
end
contact_list = []
answer = ''
while answer != "n"
    contact_list.push(add_contact())
    answer = ask("add anoter?(n/y)")
end

contact_list.each do |contact|
    puts "Name: #{contact["name"]}" 
    if contact["phone_numbers"].size > 0
        contact["phone_numbers"].each do |phone|
            puts "Phone: #{phone}"
        end
    end
    puts "----\n"
end
