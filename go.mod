module github.com/codeready-toolchain/toolchain-e2e

require (
	cloud.google.com/go v0.40.0 // indirect
	github.com/Azure/go-autorest/autorest/adal v0.6.0 // indirect
	github.com/NYTimes/gziphandler v1.1.1 // indirect
	github.com/codeready-toolchain/api v0.0.0-20191007162531-948e5f985128
	github.com/codeready-toolchain/toolchain-common v0.0.0-20191008082920-e049a77c06ec
	github.com/gobuffalo/envy v1.7.0 // indirect
	github.com/gophercloud/gophercloud v0.3.0 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/munnerz/goautoneg v0.0.0-20190414153302-2ae31c8b6b30 // indirect
	github.com/openshift/api v3.9.1-0.20190730142803-0922aa5a655b+incompatible
	github.com/operator-framework/operator-sdk v0.10.0
	github.com/satori/go.uuid v1.2.0
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.4.0
	golang.org/x/tools v0.0.0-20190620191750-1fa568393b23 // indirect
	k8s.io/api v0.0.0-20190925180651-d58b53da08f5
	k8s.io/apimachinery v0.0.0-20190925235427-62598f38f24e
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/code-generator v0.0.0-20190531131525-17d711082421 // indirect
	sigs.k8s.io/controller-runtime v0.2.2
	sigs.k8s.io/kubefed v0.1.0-rc2
)

// Pinned to kubernetes-1.13.1
replace (
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v13.0.0+incompatible
	k8s.io/api => k8s.io/api v0.0.0-20181213150558-05914d821849
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20181213153335-0fe22c71c476
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20181127025237-2b1284ed4c93
	k8s.io/client-go => k8s.io/client-go v0.0.0-20181213151034-8d9ed539ba31
)

replace (
	github.com/coreos/prometheus-operator => github.com/coreos/prometheus-operator v0.29.0
	k8s.io/code-generator => k8s.io/code-generator v0.0.0-20181117043124-c2090bec4d9b
	k8s.io/kube-openapi => k8s.io/kube-openapi v0.0.0-20180711000925-0cf8f7e6ed1d
	sigs.k8s.io/controller-runtime => sigs.k8s.io/controller-runtime v0.1.10
	sigs.k8s.io/controller-tools => sigs.k8s.io/controller-tools v0.1.11-0.20190411181648-9d55346c2bde
)

go 1.13
