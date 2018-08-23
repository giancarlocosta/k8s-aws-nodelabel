# Kubernetes AWS Node Labeler

> Tool to convert AWS tags to Kubernetes labels and taints. Each pod of the
DaemonSet will read the tags of the AWS instance the Kubernetes node is running
on, convert those tags to Kubernetes labels and taints if they are in a special
format, and apply the labels and taints to the Kubernetes node.
See `nodelabel-run.sh` for examples and config options.
