# ALIASES
# rspec
alias t='rspec --drb'

# navigation
alias go='cd /home/diego/stuff/code/'

# bundler
alias be='bundle exec'
alias bi='bundle install --binstubs'

# docs
alias docs='yard server --gems'

# rails
alias r='rails'
alias rs='rails server thin'
alias rg='rails generate'
alias rc='rails console'
alias rd='rails dbconsole'
alias krs='kill $(lsof -i :3000 -t)' # kill rails server

# rake
alias rk='bundle exec rake'

# git
alias gs='git status'
alias ga='git add .'
alias gl='git lg'
alias gl1='git lg1'
alias gc='git commit -v'
alias gi='git add -i'
alias gd='git diff'
alias gds='git diff --staged'
alias gco='git checkout'

# rake tasks
# alias dbr='rake db:migrate:reset && rake db:seed && annotate && rake db:test:prepare'
# alias dbr='rake db:migrate:reset && rake db:seed && rake db:test:prepare'
alias dbr='rake db:migrate:reset && rake db:import && rake db:test:prepare'
alias pop='rake populate:all --trace'
alias cov='rake spec:rcov'
alias migrate_prod='rake db:migrate RAILS_ENV=production'

# postgres
alias dump='pg_dump obrasenlinea_production > production.sql'
alias prod2dev='dump && rake db:drop && rake db:create && psql obrasenlinea_development < production.sql'

# Heroku
alias hkpush='heroku db:push postgres://diego:diego@127.0.0.1/obrasenlinea_production?encoding=utf8'
alias hkpull='heroku db:pull postgres://diego:diego@127.0.0.1/obrasenlinea_production?encoding=utf8'
alias hkpull_dev='heroku db:pull postgres://diego:diego@127.0.0.1/obrasenlinea_development?encoding=utf8'
alias hkbackup='heroku pgbackups:capture --expire --app obrasenlinea'
alias hkdl='curl -o oel.dump `heroku pgbackups:url --app obrasenlinea`'
alias hk2dev='pg_restore -v -c -x -O  -d obrasenlinea_development oel.dump'

# BACKUP
alias bkp='rsync -va --del --progress --log-file=/home/diego/.backup.log --exclude-from=/home/diego/.rsync/exclude /home/diego /media/backup/'
alias bkp2='rsync -va --del --modify-window=1 --progress --log-file=/home/diego/.backup.log --exclude-from=/home/diego/.rsync/exclude /home/diego /media/diego/toshiba_bkp/'

# Alert
alias alert_helper='history|tail -n1|sed -e "s/^\s*[0-9]\+\s*//" -e "s/;\s*alert$//"'
alias alert='notify-send -i /usr/share/icons/gnome/32×32/apps/gnome-terminal.png "[$?] $(alert_helper)"'

# GLOBAL ALIASES
alias -g G='| grep --color'
alias -g L='| less'
