# Profiling( https://blog.golang.org/profiling-go-programs )

```
go test -bench=. -benchmem -memprofile=mem.out -cpuprofile=cpu.out
go tool pprof mem.out
go tool pprof cpu.out
```

# Coverage

```
go test -coverprofile=coverage.out
go tool cover -html=coverage.out
```

# Add ssh to git repository

git remote set-url origin git@github.com:Konstantin8105/dotfiles.git


