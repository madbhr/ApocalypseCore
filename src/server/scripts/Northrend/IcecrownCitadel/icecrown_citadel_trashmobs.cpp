/*
 * Copyright (C) 2011-2013 ApocalypseCore <http://www.apocalypsecore.tk/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptPCH.h"
#include "icecrown_citadel.h"

enum TrashSpells
{
    //Nerub'ar Broodkeeper
    SPELL_CRYPTSCARABS                      = 70965,
    SPELL_DARKMENDING                       = 71020,
    SPELL_WEBWRAP                           = 70980,
};
enum TrashEvents
{
    //Nerub'ar Broodkeeper
    EVENT_CRYPTSCARABS          = 1,
    EVENT_DARKMENDING           = 2,
    EVENT_WEBWRAP               = 3,
};

class npc_NerubarBroodkeeper : public CreatureScript
{
public:
    npc_NerubarBroodkeeper() : CreatureScript("npc_NerubarBroodkeeper") { }
    struct npc_NerubarBroodkeeperAI: public ScriptedAI
    {
        npc_NerubarBroodkeeperAI(Creature* creature) : ScriptedAI(creature)
        {
        }
        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_CRYPTSCARABS, 10000);
            events.ScheduleEvent(EVENT_DARKMENDING, 17800);
            events.ScheduleEvent(EVENT_WEBWRAP, 12000);
        }

        void UpdateAI(uint32 diff)
        {
             //Return since we have no target
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while(uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_CRYPTSCARABS:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_CRYPTSCARABS);
                        events.RescheduleEvent(EVENT_CRYPTSCARABS, 12000);
                        break;
                    case EVENT_DARKMENDING:
                        DoCast(me, SPELL_DARKMENDING);
                        events.RescheduleEvent(EVENT_DARKMENDING, 17800);
                        break;
                    case EVENT_WEBWRAP:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_WEBWRAP);

                        events.RescheduleEvent(EVENT_WEBWRAP, 15000);
                        break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_NerubarBroodkeeperAI(creature);
    }
};
	
void AddSC_icecrown_citadel_trashmobs()
{
    new npc_NerubarBroodkeeper();
}