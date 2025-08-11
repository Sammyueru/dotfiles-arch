/* Samm's Arch Linux dotfiles
 * Copyright (C) 2025 Samm
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as Published by
 * the Free Software Foundation, version 3 of the License.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without the implied warranty of
 * MERCHANTABILITY or FITNESS FOR ANY PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have recieved a copy of the GNU General Public License
 * along with this program. If not, see https://www.gnu.org/licenses/.
 */
#ifndef SAMMTECH_ARCH_DOTFILES_COMMON_GRAPHICS_ENGINE_HPP
#define SAMMTECH_ARCH_DOTFILES_COMMON_GRAPHICS_ENGINE_HPP

#include <iostream>
#include <cstdint>
#include <SDL3/SDL.h>

namespace SammTech::Dotfiles {
class GFXEngine {
private:
    SDL_Window* window;
    SDL_Renderer* renderer;

public:
    GFXEngine(std::string window_name, uint32_t flags = 0);
    ~GFXEngine();

public:
    SDL_Window* Get_Window();
    SDL_Renderer* Get_Renderer();
};};

#endif
