# `user`

This is the [SUBHELION SOCIETY](https://subhelion.com) collaborative user script library.

## Included

#### Modules for development, system administration, and vendor services

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

#### Modules for ease-of-use

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

## Installation

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

#

set -o allexport

# required

user_name=your_user_name
user_path=~/desktop

source $user_path/user/init

# optional

user_team=subhelion
user_user=your_local_pc_user_name
user_name_github=your_github_user_name

use
```

## Intent

This is a **collaborative** library.

Instead of being devloped in a producer-consumer relationship, every `user` user is meant to modify it to fit their needs.

|        |                                                                               |
|--------|-------------------------------------------------------------------------------|
| Step 1 | Download and install the library                                              |
| Step 2 | Read other `user` users' profile files to see what is possible                |
| Step 3 | Fill out your `profile` folder, especially `user/profile/your_user_name/init` |
| Step 4 | Read the rest of source code and make modifications as needed                 |
