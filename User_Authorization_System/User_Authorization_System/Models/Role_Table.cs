//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace User_Authorization_System.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Role_Table
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Role_Table()
        {
            this.Pivot_P_R_Table = new HashSet<Pivot_P_R_Table>();
            this.Pivot_R_U_Table = new HashSet<Pivot_R_U_Table>();
        }
    
        public int role_id { get; set; }
        public string role_name { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Pivot_P_R_Table> Pivot_P_R_Table { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Pivot_R_U_Table> Pivot_R_U_Table { get; set; }
    }
}