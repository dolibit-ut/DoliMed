-- ============================================================================
-- Copyright (C) 2010 Regis Houssin  <regis.houssin@capnetworks.com>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
--
--
-- ============================================================================


ALTER TABLE llx_milestone ADD UNIQUE INDEX uk_milestone_fk_element (fk_element, elementtype);

ALTER TABLE llx_milestone ADD INDEX idx_milestone_fk_user_modif (fk_user_modif);

ALTER TABLE llx_milestone ADD CONSTRAINT fk_milestone_fk_user_modif FOREIGN KEY (fk_user_modif) REFERENCES llx_user (rowid);
