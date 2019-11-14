DEV_MEMBER_NS := toolchain-member-operator
DEV_HOST_NS := toolchain-host-operator
DEV_REGISTRATION_SERVICE_NS := $(HOST_NS)

.PHONY: dev-deploy-e2e
dev-deploy-e2e:
	$(MAKE) deploy-e2e MEMBER_NS=${DEV_MEMBER_NS} HOST_NS=${DEV_HOST_NS} REGISTRATION_SERVICE_NS=${DEV_REGISTRATION_SERVICE_NS}
	@echo "Deployment complete!"
	@echo "To clean the cluster run 'make clean-e2e-resources'"

.PHONY: dev-deploy-e2e-local
## Deploy the e2e environment with the local 'host', 'member', and 'registration-service' repositories
dev-deploy-e2e-local:
	$(MAKE) deploy-e2e-local MEMBER_NS=${DEV_MEMBER_NS} HOST_NS=${DEV_HOST_NS} REGISTRATION_SERVICE_NS=${DEV_REGISTRATION_SERVICE_NS}
	@echo "Deployment complete!"
	@echo "To clean the cluster run 'make clean-e2e-resources'"

.PHONY: dev-deploy-e2e-member-local
## Deploy the e2e resources with the local 'member-operator' repository only
dev-deploy-e2e-member-local:
	$(MAKE) dev-deploy-e2e MEMBER_REPO_PATH=${PWD}/../member-operator

.PHONY: dev-deploy-e2e-host-local
## Deploy the e2e resource with the local 'host-operator' repository only
dev-deploy-e2e-host-local:
	$(MAKE) dev-deploy-e2e HOST_REPO_PATH=${PWD}/../host-operator

.PHONY: dev-deploy-e2e-registration-local
## Deploy the e2e resources with the local 'registration-service' repository only
dev-deploy-e2e-registration-local:
	$(MAKE) dev-deploy-e2e REG_REPO_PATH=${PWD}/../registration-service

.PHONY: dev-deploy-host-services
dev-deploy-host-services:
	$(MAKE) deploy-host-services HOST_NS=${DEV_HOST_NS} REGISTRATION_SERVICE_NS=${DEV_REGISTRATION_SERVICE_NS} HOST_IMAGE_NAME=quay.io/codeready-toolchain/host-operator:v0.1
	@echo "Deployment complete on host cluster!"
	@echo "To clean the cluster run 'make clean-e2e-resources'"

.PHONY: dev-deploy-member-services
dev-deploy-member-services:
	$(MAKE) deploy-member-services MEMBER_NS=${DEV_MEMBER_NS} MEMBER_IMAGE_NAME=quay.io/codeready-toolchain/member-operator:v0.1
	@echo "Deployment complete on member cluster!"
	@echo "To clean the cluster run 'make clean-e2e-resources'"

.PHONY: deploy-host-services
deploy-host-services: build-with-operators login-as-admin deploy-host deploy-registration

.PHONY: deploy-member-services
deploy-member-services: build-with-operators login-as-admin deploy-member