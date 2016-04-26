function nvm -d "Node version manager"
  if test -e $nvm_prefix/nvm.sh
    if not type -q bass
      echo "You need to install edc/bass plugin"
      return 1
    end

    bass source $nvm_prefix/nvm.sh\; nvm $argv
  else
    echo "You need to install nvm"
    return 1
  end
end
