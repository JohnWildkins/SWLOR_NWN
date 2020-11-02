﻿using System;
using SWLOR.Game.Server.Legacy.GameObject;
using SWLOR.Game.Server.Legacy.Mod.Contracts;

namespace SWLOR.Game.Server.Legacy.Mod
{
    public class RestMod : IModHandler
    {
        public int ModTypeID => 15;
        private const int MaxValue = 20;

        public string CanApply(NWPlayer player, NWItem target, params string[] args)
        {
            if (target.RestBonus >= MaxValue)
                return "You cannot improve that item's rest bonus any further.";

            return null;
        }

        public void Apply(NWPlayer player, NWItem target, params string[] args)
        {
            var value = Convert.ToInt32(args[0]);
            var newValue = target.RestBonus + value;
            if (newValue > MaxValue) newValue = MaxValue;
            target.RestBonus = newValue;
        }

        public string Description(NWPlayer player, NWItem target, params string[] args)
        {
            var value = Convert.ToInt32(args[0]);
            return "Rest +" + value;
        }
    }
}