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

GFXEngine::GFXEngine(uint32_t flags) {

}

GFXEngine::~GFXEngine() {

}

SDL_Window* GFXEngine::Get_Window() {
    return this->window;
}

SDL_Window* GFXEngine::Get_Renderer() {
    return this->renderer;
}
