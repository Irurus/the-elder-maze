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
// clang-format off
/// This is a libtcod internal module.
/// Use at your own risk.
/// @cond INTERNAL
#pragma once
#ifndef TCOD_LEX_HPP_
#define TCOD_LEX_HPP_

#include <utility>

#include "lex.h"

class TCODLIB_API TCODLex {
 public:
  TCODLex();
  TCODLex(
      const char** symbols,
      const char** keywords,
      const char* simpleComment="//",
      const char* commentStart="/*",
      const char* commentStop="*/",
      const char* javadocCommentStart="/**",
      const char* stringDelim="\"",
      int flags=TCOD_LEX_FLAG_NESTING_COMMENT);

  TCODLex(TCODLex&& rhs) noexcept { std::swap(data, rhs.data); };
  TCODLex& operator=(TCODLex&& rhs) noexcept {
    std::swap(data, rhs.data);
    return *this;
  };

  ~TCODLex();

  void setDataBuffer(char* dat);
  bool setDataFile(const char* filename);

  int parse();
  int parseUntil(int tokenType);
  int parseUntil(const char* tokenValue);

  bool expect(int tokenType);
  bool expect(int tokenType, const char* tokenValue);

  void savepoint(TCODLex* savepoint);
  void restore(TCODLex* savepoint);
  char* getLastJavadoc();

  int getFileLine()
  {
    return data->file_line;
  }
  int getTokenType()
  {
    return data->token_type;
  }
  int getTokenIntVal()
  {
    return data->token_int_val;
  }
  int getTokenIdx()
  {
    return data->token_idx;
  }
  float getTokenFloatVal()
  {
    return data->token_float_val;
  }
  char* getToken()
  {
    return data->tok;
  }
  char getStringLastDelimiter()
  {
    return data->lastStringDelim;
  }
  char* getPos()
  { return data->pos; }
  char* getBuf()
  {
    return data->buf;
  }
  char* getFilename()
  {
    return data->filename;
  }
  char* getLastJavadocComment()
  {
    return data->last_javadoc_comment;
  }
  static const char* getTokenName(int tokenType)
  {
    return TCOD_lex_get_token_name(tokenType);
  }
 protected:
  TCOD_lex_t* data{};
};
#endif // TCOD_LEX_HPP_
/// @endcond
