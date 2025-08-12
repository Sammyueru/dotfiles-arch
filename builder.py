# Samm's Arch Linux dotfiles/programs/SammTech/Tux AI
# Copyright (C) 2025 Samm
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as Published by
# the Free Software Foundation, version 3 of the License.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without the implied warranty of
# MERCHANTABILITY or FITNESS FOR ANY PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# You should have recieved a copy of the GNU General Public License
# along with this program. If not, see https://www.gnu.org/licenses/.

import os
import sys
from builder import *

def build() -> None:
    for program_dir in os.listdir(paths.programs_dir):
        # os.walk subdirectories
        pass

def clean() -> None:
    pass

if __name__ == "__main__":
    if len(sys.argv) < 2:
        build()
    else:
        match sys.argv[1].upper():
            case "BUILD":
                build()
            case "CLEAN":
                clean()
            case _:
                print("Invalid build argument")

