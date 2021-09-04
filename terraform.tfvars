# Identity and access parameters

api_fingerprint="02:b2:8b:04:a3:be:e5:9c:1f:a0:e9:35:a5:08:80:85"

api_private_key_path="modules/apikey_by.pem"

region = "eu-frankfurt-1"

tenancy_id = "ocid1.tenancy.oc1..aaaaaaaa6h7beozm3dyptslylq6ql2bxsly3vr4vbg62y3jxotr2wur2dbxq"

user_id="ocid1.user.oc1..aaaaaaaatpvhth753r5ien2yrcju6biludch3bkgz3knuvo7nkfzk5ftgeea"

# general oci parameters
compartment_id = "ocid1.compartment.oc1..aaaaaaaahht7wjaxbu3oqsnqo2u24ucwui5db6r75z3r6f66eulu6htzfkna"

label_prefix = "OKE"

# ssh keys
ssh_private_key_path = "modules/ssh_key.key"

ssh_public_key_path = "modules/ssh_key.pub"

# networking

netnum = {
  bastion    = 32
  int_lb     = 16
  operator   = 33
  pub_lb     = 17
  workers    = 1
}

newbits = {
  bastion    = 13
  lb         = 11
  operator   = 13
  workers    = 2
}

vcn_cidr = "10.0.0.0/16"

vcn_dns_label = "okedemo"

vcn_name = "oke-vcn-demo"


# bastion

bastion_access = "ANYWHERE"

bastion_enabled = false

bastion_image_id = "Autonomous"

bastion_notification_enabled = false

bastion_notification_endpoint = "<email_address>"

bastion_notification_protocol = "EMAIL"

bastion_notification_topic= "bastion_server_notification"

bastion_package_upgrade = false

bastion_shape	= {
  # shape = "VM.Standard.E2.2"
  shape            = "VM.Standard.E3.Flex",
  ocpus            = 1,
  memory           = 4,
  boot_volume_size = 50
}

bastion_timezone = "Australia/Sydney"

operator_enabled = false

operator_image_id = "Oracle"

operator_instance_principal = true

operator_notification_enabled = false

operator_notification_endpoint = ""

operator_notification_protocol = "EMAIL"

operator_notification_topic= "operator_server_notification"

operator_package_upgrade = true

operator_shape = {
  # shape = "VM.Standard.E2.2"
  shape            = "VM.Standard.E3.Flex",
  ocpus            = 1,
  memory           = 4,
  boot_volume_size = 50
}

operator_timezone= "Australia/Sydney"

# availability_domains

availability_domains = {
  bastion = 1
  operator  = 1
}

# tags

tags = {
  # vcn, bastion and operator tags are required
  # add more tags in each as desired
  vcn = {
    # department = "finance"
    environment = "kubterraenv"
  }
  bastion = {
    # department  = "finance"
    environment = "kubterraenv"
    role        = "bastion"
  }
  operator = {
    # department = "finance"
    environment = "kubterraenv"
    role        = "operator"
  }
}

# oke

admission_controller_options = {
  PodSecurityPolicy = false
}

allow_node_port_access = false

allow_worker_ssh_access = false

cluster_name = "DemoCluster"

check_node_active = "none"

dashboard_enabled = true

kubernetes_version = "v1.20.8"

node_pools = {
  np1 = {shape="VM.Standard2.1",node_pool_size=3}
}

node_pools_to_drain = [ "np1" ] 

nodepool_drain = false

nodepool_upgrade_method = "out_of_place"

node_pool_name_prefix = "np"

node_pool_image_id = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaacwqra6qcg5iil3pwqdmtorw37prkvxaw4xql6fxt6gx4lp2diyoa"

node_pool_os = "Oracle Linux"

node_pool_os_version = "7.9"

pods_cidr = "10.244.0.0/16"

services_cidr = "10.96.0.0/16"

worker_mode = "private"

# oke load balancers
lb_subnet_type = "public"

preferred_lb_subnets = "public"

public_lb_ports = [80, 443]

waf_enabled = false

# ocir
email_address = ""

secret_id = "none"

secret_name = "ocirsecret"

tenancy_name = ""

username = ""

# calico
calico_enabled = false

#metrics server
metricserver_enabled = false

vpa = {
  enabled = false,
  version = 0.8
}

# kms
use_encryption = false

existing_key_id = "ocid1.vault.oc1.eu-frankfurt-1.b5qthrciaafak.abtheljrtnquy4eecibtk7qqfpfkgvz6jqujtcgnkjlbg7b6hwdzokkf7dva"

# service account
create_service_account = true

service_account_name = "kubeconfigsa"

service_account_namespace = "kube-system"

service_account_cluster_role_binding = "cluster-admin"
