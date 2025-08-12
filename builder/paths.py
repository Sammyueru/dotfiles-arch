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
import __main__

project_dir: str = os.path.abspath(os.path.dirname(__main__.__file__))
source_dir: str = os.path.join(project_dir, "src")
programs_dir: str = os.path.join(source_dir, "programs")
