# Profiling( https://blog.golang.org/profiling-go-programs )

```
go test -run=Bench -bench=. -benchmem -memprofile=mem.out -cpuprofile=cpu.out
go tool pprof mem.out
go tool pprof cpu.out
```

`web`       - run in browser
`top5 -cum` - run top of runtime



# Coverage

```
go test -coverprofile=coverage.out
go tool cover -html=coverage.out
```

# Add ssh to git repository

git remote set-url origin git@github.com:Konstantin8105/dotfiles.git

# Show all errors

```
:go build -gcflags="-e"
```

# Diff tools

```
git difftool --tool=meld
```

# Prepare new linux distib

Applications:
```
sudo apt install git vim-gtk octave scilab meld ctags gnuplot clang gparted cvs sqlite3 inkscape htop mysql-server mercurial
sudo snap install go --classic
```
Fonts:
```
mkdir ~/.fonts
cp ~/dotfiles/FiraFont/ttf/*.ttf ~/.fonts
cp ~/dotfiles/GolangFont/*.ttf   ~/.fonts
cp ~/dotfiles/ptmono/*.ttf       ~/.fonts
cp ~/dotfiles/Proggy/*.ttf       ~/.fonts
cp ~/dotfiles/Terminus/*.ttf     ~/.fonts
```
Vim:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

GRUB FOR HP Z800:
```
acpi=off
update-grub
```
