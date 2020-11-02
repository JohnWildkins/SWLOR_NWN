﻿using SWLOR.Game.Server.Legacy.Enumeration;
using SWLOR.Game.Server.Legacy.GameObject;

namespace SWLOR.Game.Server.Legacy.Service
{
    public static class EmoteStyleService
    {
        public static EmoteStyle GetEmoteStyle(NWObject obj)
        {
            var novelStyle = false;

            if (obj.IsPlayer)
            {
                NWPlayer player = obj.Object;
                var pc = DataService.Player.GetByID(player.GlobalID);
                novelStyle = pc.IsUsingNovelEmoteStyle;
            }

            return novelStyle ? EmoteStyle.Novel : EmoteStyle.Regular;
        }

        public static void SetEmoteStyle(NWObject obj, EmoteStyle style)
        {
            if (obj.IsPlayer)
            {
                NWPlayer player = obj.Object;
                var pc = DataService.Player.GetByID(player.GlobalID);
                pc.IsUsingNovelEmoteStyle = style == EmoteStyle.Novel;
                DataService.SubmitDataChange(pc, DatabaseActionType.Update);
            }
        }
    }
}