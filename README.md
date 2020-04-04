# Francois's C++ bootstrap project (2020)

## Building the standard build environment
```
docker build -t build_env -f build.Dockerfile . 
```

## Running the standard build environment
on linux
```
docker run --rm -it --user $(id -u ${USER}):$(id -g ${USER}) -v $(pwd):/workspace build_env
```

on windows
```
docker run --rm -it -v %cd%:/workspace build_env
```

## Building

From a `build_env` docker container:

```
cd /workspace
mkdir _bld
cd _bld
cmake ..
make
make test
``` 

## Auto-formatting the code:

From a `build_env` docker container

```
./format_all.sh
``` 