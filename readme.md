# `user`

This is the [SUBHELION SOCIETY](https://subhelion.com) collaborative user script library.

## Intro

### Included

#### Base commands

|                    |                                            |
|--------------------|--------------------------------------------|
| `get <module>`     | Reserved, along with the `get_` name space |
| `has <module>`     | Reserved, along with the `has_` name space |
| `use`              | --                                         |
| `use <module>`     | --                                         |
| `use <get_module>` | --                                         |

#### Modules: development, system administration, and vendor services

|                                |                                              |
|--------------------------------|----------------------------------------------|
| Common utility                 | `7zip`, `cloc`, `ytdlp`, etc                 |
| Core utility                   | `git`, `bash`, `python`, `ssh`, etc          |
| Development, SDK               | `dx`, `llvm`, `msvc`, `vulkan`, `win32`, etc |
| Development, package mangament | `pip`, `vcpkg`, etc                          |
| Service, code                  | `codeberg`, `github`, `gittea`, etc          |
| Service, game                  | `itch`                                       |
| Service, site                  | `aws`, `cloudflare`, etc                     |
| System package mangament       | `winget`, `scoop`, etc                       |
| System                         | `windows`                                    |

#### Modules: ease and easy

|        |                                                                                                                 |
|--------|-----------------------------------------------------------------------------------------------------------------|
| `a`    | Mounts code projects to the `A:` drive with `subst`                                                             |
| `code` | Provides `code_edit`                                                                                            |
|        | Provides `code_drop`, `code_list`, `code_pull`, `code_push`, `code_save`                                        |
| `data` | Provides `data_drop`, `data_list`, `data_pull`, `data_push`, `data_save`                                        |
| `file` | Provides `file_drop`, `file_list`, `file_pull`, `file_push`, `file_save`                                        |
| `easy` | Abbreviates `code_edit` to `edit`                                                                               |
|        | Privides `home`, `open`, `size`, `view`, and `sync`                                                             |
|        | Maps `drop`,`list`,  `pull`, `push`, and `save` to their `code_`, `data_`, and `file_` equivalents contextually |
| `help` | Generates and navigates `html` help files                                                                       |
| `hub`  | Provides `hub_url` and `hub_new`                                                                                |

### Installation

This will clone `user` into `~/desktop/user`, and create additional folders on the desktop.

```
curl --silent --location https://raw.githubusercontent.com/subhelion/user/main/user_install | bash
```

#### `~/.bashrc`

```
source ~/desktop/user/profile/your_user_name/init
```

#### `~/desktop/user/profile/your_user_name/init`

```
#!/bin/bash

set -o allexport

# required

user_name=your_user_name
user_path=~/desktop

# optional

user_team=subhelion
user_user=your_local_pc_user_name
user_name_github=your_github_user_name

#

source $user_path/user/init

use
```

### Intent

This is a **collaborative** library; Instead of being devloped in a producer-consumer relationship, every `user` user is meant to modify it to fit their needs.

|        |                                                                               |
|--------|-------------------------------------------------------------------------------|
| Step 1 | Download and install the library                                              |
| Step 2 | Read other `user` users' profiles' files to see what is possible              |
| Step 3 | Fill out your `profile` folder, especially `user/profile/your_user_name/init` |
| Step 4 | Read the rest of source code and make modifications as needed                 |
| Step 5 | Add your `user_name` to the list at the bottom of this document               |

## Help

### Modules, core

#### `git`

|           |    |
|-----------|----|
| `use git` | -- |

#### `os`

|                  |    |
|------------------|----|
| `use os`         | -- |
| `use os_windows` | -- |


### Modules, ease

#### `a`

Mounts code projects to the `A:` drive with `subst`.

|         |    |
|---------|----|
| `use a` | -- |


#### `code`

|            |    |
|------------|----|
| `use code` | -- |
|            |    |


#### `data`

|            |    |
|------------|----|
| `use data` | -- |

#### `file`

|            |    |
|------------|----|
| `use file` | -- |

### Modules, easy

#### `easy`

|            |    |
|------------|----|
| `use easy` | -- |

#### `list`

|        |               |
|--------|---------------|
| `list` | List projects |

|        |                          |
|--------|--------------------------|
| `drop` | Drop the current project |
| `save` | Save the current project |

|               |                                     |
|---------------|-------------------------------------|
| `pull`        | Pull the current project from hub   |
| `pull <slug>` | Pull the specified project from hub |
| `push`        | Push the current project to hub     |
| `sync`        | Sync the current project with hub   |

|               |                                                        |
|---------------|--------------------------------------------------------|
| `edit`        | Run the editor                                         |
| `edit <slug>` | Pull if necessary, and then edit the specified project |

|                  |                                                                   |
|------------------|-------------------------------------------------------------------|
| `home`           | Navigate to the home folder                                       |
|                  |                                                                   |
|                  |                                                                   |
| `open`           | Run the browser                                                   |
| `open <command>` | Run the browser version of a command instead of the shell version |
|                  |                                                                   |
| `size`           | Size the current project                                          |
| `size <slug>`    | Size the specified project                                        |
| `size all`       | Size all projects                                                 |
| `size total`     | Size total system footprint                                       |
|                  |                                                                   |
| `view`           | Run the explorer                                                  |
|                  |                                                                   |


## Users

```
belimoth
spnoodle
subhelion
```
