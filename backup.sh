#!/bin/bash
echo -e "\033[33;44m AgendaAgua | Backing up database...\033[0m"
rsync -avz agua@agendaaguanaescola.eco.br:~/agendaaguanaescola.eco.br/shared/db/prod.sqlite3 ~/Projetos/Agenda\ Agua\ na\ Escola/aguanaescola/db/dev.sqlite3
echo -e "\033[33;44m AgendaAgua | Backing up uploads...\033[0m"
rsync -ravz agua@agendaaguanaescola.eco.br:~/agendaaguanaescola.eco.br/shared/uploads/ ~/Projetos/Agenda\ Agua\ na\ Escola/aguanaescola/public/uploads/
