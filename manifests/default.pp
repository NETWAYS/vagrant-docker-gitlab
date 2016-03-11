node 'gitlab.example.org' {
  include ::apt

  include ::docker
  include ::docker::images
  include ::docker::run_instance

  include ::apache
  include ::apache::mod::proxy_http
  create_resources('apache::vhost', hiera_hash('apache::vhosts'))
}