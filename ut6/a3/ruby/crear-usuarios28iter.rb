#!/usr/bin/env ruby

system("figlet ayoze28")

NOMBRES = File.read('users.txt').split

for i in NOMBRES
    echo=system("id #{i} || echo $?")
    puts "Creando usuario #{i}"
    system("useradd -g users -d /home/#{i} -m -s /bin/bash #{i}")
end
