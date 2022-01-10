# ZSH Scripts

Keep your `.zshrc` organized in `~/zsh_scripts` and load them using `${ZSH_SCRIPTS}/bootstrap`.

Inspired by [Your ~/.bashrc doesn't have to be a mess](https://write.as/bpsylevc6lliaspe.md) and relative [lobste.rs conversation](https://lobste.rs/s/r1tpld/your_bashrc_doesn_t_have_be_mess).


```
# Clone the repo and remove .git dir
npx degit https://github.com/borracciaBlu/zsh_scripts ~/zsh_scripts
```

```
# To paste in .zshrc and load scipts
ZSH_SCRIPTS=~/zsh_scripts
[[ -r ${ZSH_SCRIPTS}/bootstrap ]] && . ${ZSH_SCRIPTS}/bootstrap
```
