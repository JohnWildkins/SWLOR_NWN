﻿using System.Collections.Generic;
using SWLOR.Game.Server.Core;
using SWLOR.Game.Server.Core.NWScript.Enum;
using SWLOR.Game.Server.Core.NWScript.Enum.VisualEffect;
using SWLOR.Game.Server.Service;
using SWLOR.Game.Server.Service.AbilityService;
using SWLOR.Game.Server.Service.CombatService;
using SWLOR.Game.Server.Service.PerkService;
using SWLOR.Game.Server.Service.SkillService;

namespace SWLOR.Game.Server.Feature.AbilityDefinition.Force
{
    public class ThrowRockAbilityDefinition : IAbilityListDefinition
    {
        public Dictionary<FeatType, AbilityDetail> BuildAbilities()
        {
            var builder = new AbilityBuilder();
            ThrowRock1(builder);
            ThrowRock2(builder);
            ThrowRock3(builder);
            ThrowRock4(builder);
            ThrowRock5(builder);

            return builder.Build();
        }

        private static void ImpactAction(uint activator, uint target, int level, Location targetLocation)
        {
            var dmg = 0;

            switch (level)
            {
                case 1:
                    dmg = 10;
                    break;
                case 2:
                    dmg = 15;
                    break;
                case 3:
                    dmg = 25;
                    break;
                case 4:
                    dmg = 34;
                    break;
                case 5:
                    dmg = 43;
                    break;
            }

            dmg += Combat.GetAbilityDamageBonus(activator, SkillType.Force);

            var attackerStat = GetAbilityScore(activator, AbilityType.Willpower);
            var defense = Stat.GetDefense(target, CombatDamageType.Force, AbilityType.Willpower);
            var defenderStat = GetAbilityScore(target, AbilityType.Willpower);
            var attack = Stat.GetAttack(activator, AbilityType.Willpower, SkillType.Force);
            var damage = Combat.CalculateDamage(
                attack,
                dmg,
                attackerStat,
                defense,
                defenderStat,
                0);
            var delay = GetDistanceBetweenLocations(GetLocation(activator), targetLocation) / 25.0f;

            AssignCommand(activator, () =>
            {
                DoThrowRock(target, level);
            });

            var eDMG = EffectDamage(damage, DamageType.Bludgeoning);
            var eVFX = EffectVisualEffect(VisualEffect.Vfx_Imp_Dust_Explosion);

            Enmity.ModifyEnmity(activator, target, damage);
            CombatPoint.AddCombatPoint(activator, target, SkillType.Force, 3);

            DelayCommand(delay, () =>
            {
                ApplyEffectToObject(DurationType.Instant, eVFX, target);
                ApplyEffectToObject(DurationType.Instant, eDMG, target);
            });
        }

        private static void ThrowRock1(AbilityBuilder builder)
        {
            builder.Create(FeatType.ThrowRock1, PerkType.ThrowRock)
                .Name("Throw Rock I")
                .HasRecastDelay(RecastGroup.ThrowRock, 30f)
                .HasMaxRange(30.0f)
                .RequirementFP(4)
                .IsCastedAbility()
                .IsHostileAbility()
                .DisplaysVisualEffectWhenActivating(VisualEffect.None)
                .UsesAnimation(Animation.CastOutAnimation)
                .HasImpactAction(ImpactAction);
        }

        private static void ThrowRock2(AbilityBuilder builder)
        {
            builder.Create(FeatType.ThrowRock2, PerkType.ThrowRock)
                .Name("Throw Rock II")
                .HasRecastDelay(RecastGroup.ThrowRock, 30f)
                .HasMaxRange(30.0f)
                .RequirementFP(5)
                .IsCastedAbility()
                .IsHostileAbility()
                .DisplaysVisualEffectWhenActivating(VisualEffect.None)
                .UsesAnimation(Animation.CastOutAnimation)
                .HasImpactAction(ImpactAction);
        }

        private static void ThrowRock3(AbilityBuilder builder)
        {
            builder.Create(FeatType.ThrowRock3, PerkType.ThrowRock)
                .Name("Throw Rock III")
                .HasRecastDelay(RecastGroup.ThrowRock, 30f)
                .HasMaxRange(30.0f)
                .RequirementFP(6)
                .IsCastedAbility()
                .IsHostileAbility()
                .DisplaysVisualEffectWhenActivating(VisualEffect.None)
                .UsesAnimation(Animation.CastOutAnimation)
                .HasImpactAction(ImpactAction);
        }

        private static void ThrowRock4(AbilityBuilder builder)
        {
            builder.Create(FeatType.ThrowRock4, PerkType.ThrowRock)
                .Name("Throw Rock IV")
                .HasRecastDelay(RecastGroup.ThrowRock, 30f)
                .HasMaxRange(30.0f)
                .RequirementFP(7)
                .IsCastedAbility()
                .DisplaysVisualEffectWhenActivating(VisualEffect.None)
                .UsesAnimation(Animation.CastOutAnimation)
                .HasImpactAction(ImpactAction);
        }
        private static void ThrowRock5(AbilityBuilder builder)
        {
            builder.Create(FeatType.ThrowRock5, PerkType.ThrowRock)
                .Name("Throw Rock V")
                .HasRecastDelay(RecastGroup.ThrowRock, 30f)
                .HasMaxRange(40.0f)
                .RequirementFP(8)
                .IsCastedAbility()
                .DisplaysVisualEffectWhenActivating(VisualEffect.None)
                .UsesAnimation(Animation.CastOutAnimation)
                .HasImpactAction(ImpactAction);
        }
        private static void DoThrowRock(uint target, int level)
        {
            var missile = EffectVisualEffect(VisualEffect.Vfx_Imp_Mirv_Rock, false, 0.1f * level);
            PlaySound("plr_force_throw");
            ApplyEffectToObject(DurationType.Instant, missile, target);
        }
    }
}