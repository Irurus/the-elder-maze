/* BSD 3-Clause License
 *
 * Copyright © 2008-2025, Jice and the libtcod contributors.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */
#pragma once
#ifndef TCOD_GUI_STATUSBAR_HPP
#define TCOD_GUI_STATUSBAR_HPP
#ifndef NO_SDL
#ifndef TCOD_NO_UNICODE
#include "../console_printing.hpp"
#include "widget.hpp"

namespace tcod::gui {
class StatusBar : public Widget {
 public:
  StatusBar(int x, int y, int w, int h) : Widget{x, y, w, h} {}
  void render() override {
    const auto bg = TCOD_ColorRGB(back);
    tcod::draw_rect(*con, {x, y, w, h}, ' ', std::nullopt, bg);
    if (focus && focus->tip_.size()) {
      const auto fg = TCOD_ColorRGB(fore);
      tcod::print_rect(*con, {x + 1, y, w, h}, focus->tip_, fg, std::nullopt);
    }
  }
};
}  // namespace tcod::gui
#endif  // TCOD_NO_UNICODE
#endif  // NO_SDL
#endif /* TCOD_GUI_STATUSBAR_HPP */
