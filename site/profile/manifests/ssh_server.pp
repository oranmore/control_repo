class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDiJASILl2BXkQdaf9xxmdcUzb11zSWvqveDjUNtNzDha9flxp/HYhCBXeyqCZxRzMRIEJ4KgfeF5QD8PG8IwIlPR6dIBch1HpjR/+xqtw0Yz7Ge6KaKZWjL6aQUFkzWucIQRjRgGMk4kdBneur0nEZphRIANi1ikZq3QrlPOKP/iOSAEieNx/E04U7YI0hyyDz3u3lpfmZRQvk6zVL7JMrpz3nH3bN6QvUNuc8xNRr4UDvZlzHlrVri3rz3mBznKvipckSTeuaa6C0bln5qRgDjHdTmOqrpZRfKRsN2A5qpqmN2VqqviBTXtZm2oAsk9+NUV0lVEGAWMVIeWMHTZ/z',
        }
}
