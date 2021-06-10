#ZSH Scripts

Inspired by https://write.as/bpsylevc6lliaspe.md and https://lobste.rs/s/r1tpld/your_bashrc_doesn_t_have_be_mess


```
# Clone the repo and remove .git dir
npx degit https://github.com/borracciaBlu/zsh_scripts ~/zsh_scripts
```

```
# To paste in .zshrc and load scipts
ZSH_SCRIPTS=~/zsh_scripts
[[ -r ${ZSH_SCRIPTS}/bootstrap ]] && . ${ZSH_SCRIPTS}/bootstrap
```
