#!/bin/bash

# -----------------------------------------------------------------------------
# Comprehensive Auto-completion for kubectl and its alias (k)
# -----------------------------------------------------------------------------

_kubectl_complete() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    # Core kubectl commands
    local commands=(
        "apply" "attach" "auth" "autoscale" "certificate" "cluster-info"
        "completion" "config" "convert" "cordon" "cp" "create" "delete"
        "describe" "diff" "drain" "edit" "exec" "explain" "expose" "get"
        "label" "logs" "options" "patch" "plugin" "port-forward" "proxy"
        "replace" "rollout" "run" "scale" "set" "taint" "top" "uncordon"
        "version" "wait" "resource" "kustomize" "api-resources" "api-versions"
        "debug" "events" "attach" "auth"
    )

    # Global options for kubectl
    local global_opts=(
        "--kubeconfig" "--context" "--namespace" "--v" "--request-timeout"
        "--as" "--as-group" "--cache-dir" "--certificate-authority"
        "--client-certificate" "--client-key" "--token" "--server"
        "--user" "--log-flush-frequency" "--log-level" "--alsologtostderr"
        "--disable-compression" "--field-selector" "--ignore-not-found"
        "--output" "--show-kind" "--sort-by" "--watch" "--watch-only"
        "--timeout" "--dry-run" "--all-namespaces"
    )

    # Resource types for kubectl
    local resource_types=(
        "pods" "services" "deployments" "statefulsets" "daemonsets" 
        "jobs" "cronjobs" "configmaps" "secrets" "nodes" "namespaces"
        "persistentvolumes" "persistentvolumeclaims" "roles" "rolebindings"
        "clusterroles" "clusterrolebindings" "serviceaccounts" "ingresses"
        "endpoints" "events" "networkpolicies" "replicasets"
    )

    # Suggestions based on the current command
    case "$prev" in
        "apply"|"delete"|"get"|"describe"|"edit"|"label"|"annotate"|"scale")
            opts="${resource_types[*]} --filename --recursive --namespace --output --watch --all"
            ;;
        "config")
            opts="use-context set-context get-contexts current-context unset set-cluster set-credentials view"
            ;;
        "create")
            opts="deployment job namespace secret configmap clusterrole clusterrolebinding serviceaccount"
            ;;
        "expose")
            opts="deployment pod service --port --target-port --protocol --type"
            ;;
        "exec")
            opts="--stdin --tty --container --command"
            ;;
        "logs")
            opts="--follow --timestamps --tail --selector --since --since-time --limit-bytes"
            ;;
        "rollout")
            opts="status history restart undo pause resume"
            ;;
        "run")
            opts="--image --labels --port --env --restart --dry-run --overrides --attach --command --stdin --tty --generator"
            ;;
        "set")
            opts="image resources selector serviceaccount subject"
            ;;
        "top")
            opts="node pod --sort-by --namespace"
            ;;
        "debug")
            opts="pod --image --namespace --attach --tty --container"
            ;;
        "auth")
            opts="can-i reconcile"
            ;;
        *)
            opts="${commands[*]} ${global_opts[*]}"
            ;;
    esac

    # Generate suggestions for the current option
    COMPREPLY=( $(compgen -W "${opts}" -- "$cur") )
    return 0
}

# Enable completion for kubectl and alias k
complete -F _kubectl_complete kubectl
alias k="kubectl"
complete -F _kubectl_complete k
