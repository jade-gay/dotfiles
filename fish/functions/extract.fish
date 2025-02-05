function extract
	if not set -q argv[1]
		echo "wrong args, use extract <file> [directory] :3"
		return 1
	end

	set filename (realpath $argv[1])

	if not set -q argv[2]
		set dir (dirname $filename)
	else
		set dir (realpath $argv[2])
	end

	switch (string split -r . $filename)[-1]
		case "tar"
			tar -xvf $filename -C $dir
		case "gz"
			tar -xzvf $filename -C $dir
		case "bz2"
			tar -xjvf $filename -C $dir
		case "zip"
			unzip $filename -d $dir
		case "rar"
			unrar x $filename $dir
		case "7z"
			7z x $filename -o$dir
		case '*'
			echo "file type not supported :c (string split -r . $filename[-1]"
			return 1
		end
	end