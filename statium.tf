resource "linode_domain" "statium" {
    domain = "statium.io"
    type = "master"
    soa_email = "example@foobar.example"
    tags = ["statium-infra", "terraform"]
}

# ██     ██ ███████ ██████   █████  ██████  ██████  
# ██     ██ ██      ██   ██ ██   ██ ██   ██ ██   ██ 
# ██  █  ██ █████   ██████  ███████ ██████  ██████  
# ██ ███ ██ ██      ██   ██ ██   ██ ██      ██      
#  ███ ███  ███████ ██████  ██   ██ ██      ██      
#                                                   
#                                                  
# 📜 https://docs.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain
resource "linode_domain_record" "statium_github_pages_1" {
    domain_id = linode_domain.statium.id
    record_type = "A"
    target = "185.199.108.153"
}

resource "linode_domain_record" "statium_github_pages_2" {
    domain_id = linode_domain.statium.id
    record_type = "A"
    target = "185.199.109.153"
}

resource "linode_domain_record" "statium_github_pages_3" {
    domain_id = linode_domain.statium.id
    record_type = "A"
    target = "185.199.110.153"
}

resource "linode_domain_record" "statium_github_pages_4" {
    domain_id = linode_domain.statium.id
    record_type = "A"
    target = "185.199.111.153"
}

# ██████  ██       ██████   ██████  
# ██   ██ ██      ██    ██ ██       
# ██████  ██      ██    ██ ██   ███ 
# ██   ██ ██      ██    ██ ██    ██ 
# ██████  ███████  ██████   ██████  
#                                   
#
# 📜 https://docs.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-a-subdomain
resource "linode_domain_record" "blog_statium_github_pages_1" {
    name = "blog"
    domain_id = linode_domain.statium.id
    record_type = "CNAME"
    target = "dirtyhenry.github.io"
}
