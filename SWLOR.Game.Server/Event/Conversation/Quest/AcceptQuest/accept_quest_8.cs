﻿using SWLOR.Game.Server.Event.Conversation.Quest.AcceptQuest;

// ReSharper disable once CheckNamespace
namespace NWN.Scripts
{
#pragma warning disable IDE1006 // Naming Styles
    public class accept_quest_8
#pragma warning restore IDE1006 // Naming Styles
    {
        public static int Main()
        {
            return QuestAccept.Check(8) ? 1 : 0;
        }
    }
}