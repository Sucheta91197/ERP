package com.erp.entites;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "bill_of_material")
public class BillOfMaterial {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "bill_of_material_seq")
	@SequenceGenerator(name = "bill_of_material_seq", sequenceName = "bill_of_material_seq", allocationSize = 1)
	@Column(name = "accessories_id")
	private int accessoriesId;

	@Column(name = "accessories_name")
	private String accessoriesName;

	@Column(name = "plant_name")
	private String plantName;

	@Column(name = "start_date")
	private String startDate;

	@Column(name = "end_date")
	private String endDate;

	@Column(name = "availability")
	private String availability;

	public BillOfMaterial() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BillOfMaterial( String accessoriesName, String plantName, String startDate, String endDate,
			String availability) {
		super();
		
		this.accessoriesName = accessoriesName;
		this.plantName = plantName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.availability = availability;
	}
	

	public BillOfMaterial(int accessoriesId, String accessoriesName, String plantName, String startDate, String endDate,
			String availability) {
		super();
		this.accessoriesId = accessoriesId;
		this.accessoriesName = accessoriesName;
		this.plantName = plantName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.availability = availability;
	}

	public int getAccessoriesId() {
		return accessoriesId;
	}

	public void setAccessoriesId(int accessoriesId) {
		this.accessoriesId = accessoriesId;
	}

	public String getAccessoriesName() {
		return accessoriesName;
	}

	public void setAccessoriesName(String accessoriesName) {
		this.accessoriesName = accessoriesName;
	}

	public String getPlantName() {
		return plantName;
	}

	public void setPlantName(String plantName) {
		this.plantName = plantName;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

	@Override
	public String toString() {
		return "BillOfMaterial [accessoriesId=" + accessoriesId + ", accessoriesName=" + accessoriesName
				+ ", plantName=" + plantName + ", startDate=" + startDate + ", endDate=" + endDate + ", availability="
				+ availability + "]";
	}

}
