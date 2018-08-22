all: hello.exe

hello.exe: main.fs
	fsharpc `pkg-config --libs gtk-sharp-3.0` --out:$@ main.fs

bundle: hello.exe
	mkbundle --deps --static --config /etc/mono/config -L /usr/lib/mono/4.5/ -o hello hello.exe /usr/lib/mono/4.5/System.dll /usr/lib/mono/4.5/mscorlib.dll 

