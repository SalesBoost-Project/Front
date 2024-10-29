package beyond.samdasoo.user.entity;

import beyond.samdasoo.admin.entity.Department;
import beyond.samdasoo.admin.entity.TargetSale;
import beyond.samdasoo.common.entity.BaseEntity;
import beyond.samdasoo.potentialcustomer.entity.PotentialCustomer;
import beyond.samdasoo.user.dto.UserRole;
import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDate;

import java.util.List;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "TB_USER")
@Entity
public class User extends BaseEntity {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_no")
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(unique = true, nullable = false)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false,name="employee_id",unique = true)
    private String employeeId; // 사번

    @JoinColumn(name = "dept_id",nullable = false)
    @ManyToOne(fetch = FetchType.LAZY)
    private Department department;

    @Enumerated(EnumType.STRING)
    private UserRole role;

    @CreationTimestamp
    @Column(name = "join_date",updatable = false)
    private LocalDate joinDate; // 가입일

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<TargetSale> targetSales;


    public void RoleChangeToAdmin(){
        this.role = UserRole.ADMIN;
    }

    public void RoleChangeToUser(){
        this.role = UserRole.USER;
    }

    public void setJoinDate(LocalDate joinDate){
        this.joinDate = joinDate;
    }

    @Builder
    public User(String name, String email, String password,String employeeId,Department department, UserRole role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.employeeId = employeeId;
        this.department = department;
        this.role = role;
    }
}
