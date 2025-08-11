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
#include "engine.hpp"

using namespace SammTech::Dotfiles;

GFXEngine::GFXEngine(std::string window_name, int width, int height, uint32_t flags) {
    SDL_WindowFlags window_flags = SDL_WINDOW_VULKAN;
    window_flags |= (((flags) & 1) ? : SDL_WINDOW_TRANSPARENT) | (((flags >> 1) & 1) ? : SDL_WINDOW_BORDERLESS);
    this->window = SDL_CreateWindow(window_name.c_str(), width, height, window_flags);
    this->renderer = SDL_CreateRenderer(window, NULL);
}

GFXEngine::~GFXEngine() {
    SDL_DestroyWindow(this->window);
    SDL_DestroyRenderer(this->renderer);
}

SDL_Window* GFXEngine::Get_Window() {
    return this->window;
}

SDL_Renderer* GFXEngine::Get_Renderer() {
    return this->renderer;
}
