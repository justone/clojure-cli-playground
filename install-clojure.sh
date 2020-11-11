#!/usr/bin/env bash

version=$1

if [[ -z $version ]]; then
  echo "usage $0 [version]"
  exit 1
fi

entrypoint=clojure-${version}

if [[ -e $entrypoint ]]; then
  echo "Clojure version $version is already installed. Run ./$entrypoint to use."
  exit 1
fi

echo "Installing Clojure v${version}..."
echo

curl -O https://download.clojure.org/install/linux-install-${version}.sh
chmod +x linux-install-${version}.sh
mkdir -p clojures/${version}
./linux-install-${version}.sh -p clojures/${version}
rm ./linux-install-${version}.sh

cat <<EOF > $entrypoint
#!/usr/bin/env bash

./clojures/$version/bin/clojure "\$@"

EOF
chmod +x $entrypoint

echo
echo "Clojure version $version is now available. Run ./$entrypoint to use."
