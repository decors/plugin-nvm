if type -q bass
    set -q NVM_DIR; or set -gx NVM_DIR ~/.nvm
    set -g nvm_prefix $NVM_DIR

    type -q brew;
        and test -e (brew --prefix)/Cellar/nvm;
        and set -g nvm_prefix (brew --prefix nvm)

    bass source $nvm_prefix/nvm.sh >/dev/null ^&1
end
