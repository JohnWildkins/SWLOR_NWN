﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace SWLOR.CLI.LegacyMigration
{
    public partial class Association
    {
        public Association()
        {
            Player = new HashSet<Player>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Player> Player { get; set; }
    }
}