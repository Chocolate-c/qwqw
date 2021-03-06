package com.hqyj.hrms.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "role_resource")
public class RoleResource {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="role_resource_id")
	private int roleResourceId;
	@Column(name="role_id")
	private int roleId;
	@Column(name="resource_id")
	private int resourceId;

	public RoleResource() {
	}

	public RoleResource(int roleId, int resourceId) {
		super();
		this.roleId = roleId;
		this.resourceId = resourceId;
	}

	public int getRoleResourceId() {
		return roleResourceId;
	}

	public void setRoleResourceId(int roleResourceId) {
		this.roleResourceId = roleResourceId;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public int getResourceId() {
		return resourceId;
	}

	public void setResourceId(int resourceId) {
		this.resourceId = resourceId;
	}
}
