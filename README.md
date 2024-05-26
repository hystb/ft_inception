<p align="center">
  <img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100" alt="project-logo">
</p>
<p align="center">
    <h1 align="center">FT_INCEPTION</h1>
</p>
<p align="center">
    <em>Elevating containerized development to new heights.</em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/hystb/ft_inception?style=default&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/hystb/ft_inception?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/hystb/ft_inception?style=default&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/hystb/ft_inception?style=default&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
	<!-- default option, no dependency badges. -->
</p>

<br><!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary><br>

- [ Overview](#-overview)
- [ Features](#-features)
- [ Repository Structure](#-repository-structure)
- [ Modules](#-modules)
- [ Getting Started](#-getting-started)
  - [ Installation](#-installation)
  - [ Usage](#-usage)
</details>
<hr>

##  Overview

Ft_inception orchestrates a Dockerized development environment with MariaDB, WordPress, and NGINX for seamless project setup. It handles SSL configuration, database initialization, WordPress setup, and NGINX routing, enhancing the workflow within the repository architecture. By automating service deployment and configuration, ft_inception streamlines web development setups and ensures efficient collaboration on the nmilan.42.fr project domain.

---

##  Features

|    |   Feature         | Description |
|----|-------------------|---------------------------------------------------------------|
| ⚙️  | **Architecture**  | Containers managed using Docker Compose with services for MariaDB, WordPress, and Nginx. Dockerfiles and configuration files provided for each service. Project structured around a Dockerized development environment. |
| 🔩 | **Code Quality**  | Makefile for managing project tasks and dependencies. Structured source code with clear separation of concerns between services such as Nginx, MariaDB, and WordPress. Consistent use of shell scripts for automation. |
| 📄 | **Documentation** | Detailed documentation provided in the repository, including explanations of Dockerfiles, configuration files, and setup instructions for services. Readme and comments within source files enhance understanding and ease of use. |
| 🔌 | **Integrations**  | Dependencies on MariaDB, WordPress, Nginx. Utilizes Docker for containerization and orchestration. Nginx handles HTTPS requests for nmilan.42.fr domain. Integration with database, web server, and PHP application. |
| 🧩 | **Modularity**    | Services encapsulated in separate containers, promoting modularity. Configuration files for Nginx, MariaDB, WordPress kept distinct. Facilitates easy maintenance and scalability. Codebase organized into logical components. |
| 🧪 | **Testing**       | Testing framework specifics not mentioned. Consider adding unit and integration tests to ensure reliability across services. Incorporate testing tools like PHPUnit, WP-CLI, and Nginx testing utilities. |
| ⚡️  | **Performance**   | Efficiency dependent on Docker container performance and resource allocation. Optimizing Docker configurations and service settings can enhance speed. Monitor resource usage to ensure efficient container operation. |
| 🛡️ | **Security**      | SSL configurations for Nginx enhancing data protection. Secure database initialization in MariaDB setup. Authentication and access controls managed within containers. Continuous monitoring and updates crucial for security maintenance. |
| 📦 | **Dependencies**  | Key dependencies include MariaDB, WordPress, Nginx, Docker, and associated libraries. Utilizes Debian Bullseye as the base image for containers. Shell scripts for automation. |
| 🚀 | **Scalability**   | Scalability supported by containerized environment. Ability to scale services horizontally by adjusting replica counts in Docker Compose. Load balancing and scaling strategies should be considered for increased traffic handling. |

---

##  Repository Structure

```sh
└── ft_inception/
    ├── Makefile
    └── srcs
        ├── docker-compose.yml
        └── requirements
```

---

##  Modules

<details closed><summary>.</summary>

| File                                                                   | Summary                      |
| ---                                                                    | ---                          |
| [Makefile](https://github.com/hystb/ft_inception/blob/master/Makefile) | Up, down, clean, fclean, re. |

</details>

<details closed><summary>srcs</summary>

| File                                                                                            | Summary                                                                                                                                                                                                                     |
| ---                                                                                             | ---                                                                                                                                                                                                                         |
| [docker-compose.yml](https://github.com/hystb/ft_inception/blob/master/srcs/docker-compose.yml) | Defines services and their dependencies for a Dockerized development environment with MariaDB, Wordpress, and nginx. Specifies volume mappings, network configurations, and environment variables for smooth project setup. |

</details>

<details closed><summary>srcs.requirements.nginx</summary>

| File                                                                                               | Summary                                                                                                                                      |
| ---                                                                                                | ---                                                                                                                                          |
| [Dockerfile](https://github.com/hystb/ft_inception/blob/master/srcs/requirements/nginx/Dockerfile) | Configures NGINX server with SSL certificates and virtual host for nmilan.42.fr domain. Exposes port 443 and starts NGINX in the foreground. |

</details>

<details closed><summary>srcs.requirements.nginx.conf</summary>

| File                                                                                                    | Summary                                                                                                                                               |
| ---                                                                                                     | ---                                                                                                                                                   |
| [nginx.conf](https://github.com/hystb/ft_inception/blob/master/srcs/requirements/nginx/conf/nginx.conf) | Implements Nginx server configuration for ft_inception project, handling HTTPS requests for nmilan.42.fr. Routes PHP requests to WordPress container. |

</details>

<details closed><summary>srcs.requirements.mariadb</summary>

| File                                                                                                 | Summary                                                                                                                                                                              |
| ---                                                                                                  | ---                                                                                                                                                                                  |
| [Dockerfile](https://github.com/hystb/ft_inception/blob/master/srcs/requirements/mariadb/Dockerfile) | Defines Dockerfile to build MariaDB image with specified credentials, initializes server, creates database and users, handles privileges, and exposes port 3306 for external access. |

</details>

<details closed><summary>srcs.requirements.wordpress</summary>

| File                                                                                                   | Summary                                                                                                         |
| ---                                                                                                    | ---                                                                                                             |
| [Dockerfile](https://github.com/hystb/ft_inception/blob/master/srcs/requirements/wordpress/Dockerfile) | PHP, MySQL client, WP-CLI. Sets up PHP-FPM pool, copies configurations, and starts the container with a script. |

</details>

<details closed><summary>srcs.requirements.wordpress.conf</summary>

| File                                                                                                    | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ---                                                                                                     | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| [init.sh](https://github.com/hystb/ft_inception/blob/master/srcs/requirements/wordpress/conf/init.sh)   | Downloads core, configures database, installs theme, creates user, sets permissions, and starts PHP server. Enhances WordPress workflow within the repositorys architecture.                                                                                                                                                                                                                                                                                                               |
| [php.conf](https://github.com/hystb/ft_inception/blob/master/srcs/requirements/wordpress/conf/php.conf) | The `php.conf` file in the `srcs/requirements/wordpress/conf/` directory sets configurations for the www pool in the PHP-FPM service. It defines settings such as the Unix user and group for processes, helping manage resource access and permissions within the FPM service. These configurations are critical for ensuring proper execution and security of PHP-based applications, particularly in a containerized environment as part of the `ft_inception` repository architecture. |

</details>

---

##  Getting Started

###  Installation

<h4>From <code>source</code></h4>

> 1. Clone the ft_inception repository:
>
> ```console
> $ git clone https://github.com/hystb/ft_inception
> ```
>
> 2. Change to the project directory:
> ```console
> $ cd ft_inception
> ```

###  Usage

<h4>From <code>source</code></h4>

> Run ft_inception using the command below:
> ```bash
> make
> ```


---
