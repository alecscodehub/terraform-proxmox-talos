

export TALOSCONFIG=$PWD/talosconfig.yml
controllers="$(terraform output -raw controllers)"
workers="$(terraform output -raw workers)"
all="$controllers,$workers"
c0="$(echo $controllers | cut -d , -f 1)"
w0="$(echo $workers | cut -d , -f 1)"
talosctl -n $c0 kubeconfig .
export KUBECONFIG=$PWD/kubeconfig