# Profiling( https://blog.golang.org/profiling-go-programs )

```
go test -bench=. -benchmem -memprofile=mem.out -cpuprofile=cpu.out
go tool pprof mem.out
go tool pprof cpu.out
```

# Add ssh to git repository

git remote set-url origin git@github.com:Konstantin8105/dotfiles.git
