# Copyright (C) 2023  Horimoto Yasuhiro <horimoto@clear-code.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

module GroongaBenchmark
  class Server
    def initialize
      command_line = ["groonga"]
      command_line << "-s"
      command_line << "--protocol=http"
      command_line << "-n db.benchmark"
      @pid = spawn(command_line)
      system("curl",
             "http://localhost:10041/d/table_create?name=Benchmark&flags=TABLE_HASH_KEY&key_type=ShortText")
    end

    def close
      return if @pid.nil?
      system("curl", "https://localhost:10041/d/shutdown")
    end
  end
end
