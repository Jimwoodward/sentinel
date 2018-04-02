resource "aws_s3_bucket" "the_chum_bucket" {
  bucket = "${var.name}"
  acl = "private"
  policy = "${data.template_file.policy.rendered}"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags {
    name = "${var.name}"
    ownership = "${var.ownership}"
    how_cool_is_devops = "${var.cool}"
    does_edgar_like_tacos = "${var.edgar}"
    how_secure_is_josephs_laptop = "${var.secure}"
    get_bucked = "${var.burger_train}"
  }
}

data "template_file" "policy" {
  template = "${file("${path.module}/policy.json.tpl")}"

  vars {
    bucket_id       = "${var.name}"
    allow_ip_ranges = "${var.allow_ip_ranges}"
  }
}
