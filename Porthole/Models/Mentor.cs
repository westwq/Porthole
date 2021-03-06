﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Porthole.Utils;

namespace Porthole.Models
{
    public class Mentor : IAccount
    {
        [Key]
        [Column("MentorID")]
        public int ID { get; set; }
        public string Name { get; set; }

        [Column("EmailAddr")]
        public string EmailAddress { get; set; }
        public string Password { get; set; }

        public ICollection<Student> Students { get; set; }
        public ICollection<Suggestion> Suggestions { get; set; }

        public ICollection<Message> Messages { get; set; }

        [NotMapped]
        public string Initials
        {
            get
            {
                return DisplayUtils.GetInitials(Name);
            }
        }
    }
}
