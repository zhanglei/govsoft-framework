package com.govsoft.framework.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.ForeignKey;

import com.govsoft.framework.common.hibernate.BaseEntity;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert = true, dynamicUpdate = true)
@Table(name = "region", uniqueConstraints = {})
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Region extends BaseEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String name;

	@Column(name = "rome", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String rome;

	@Column(name = "sz_code", unique = false, nullable = false, insertable = true, updatable = true, length = 6, columnDefinition = "char(6)")
	private String szCode;

	@Column(name = "zm_code", unique = false, nullable = false, insertable = true, updatable = true, length = 20)
	private String zmCode;

	@Column(name = "level", unique = false, nullable = true, insertable = true, updatable = true)
	private Byte level;

	@ManyToOne(cascade = { CascadeType.ALL }, fetch = FetchType.LAZY, targetEntity = Region.class, optional = false)
	@JoinColumn(name = "parent_id", unique = false, nullable = true, insertable = true, updatable = true, columnDefinition = "char(36)")
	@ForeignKey(name = "fk_region")
	private Region parent;

	@Column(name = "province_name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String provinceNname;

	@Column(name = "city_id", unique = true, nullable = false, insertable = true, updatable = true, length = 36, columnDefinition = "char(36)")
	private String cityId;

	@Column(name = "city_name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String cityNname;

	@Column(name = "county_id", unique = true, nullable = false, insertable = true, updatable = true, length = 36, columnDefinition = "char(36)")
	private String countyId;

	@Column(name = "county_name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String countyNname;

	@Column(name = "cluster_id", unique = true, nullable = false, insertable = true, updatable = true, length = 36, columnDefinition = "char(36)")
	private String clusterId;

	@Column(name = "cluster_name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String clusterNname;

	@Column(name = "area_id", unique = true, nullable = false, insertable = true, updatable = true, length = 36, columnDefinition = "char(36)")
	private String areaId;

	@Column(name = "area_name", unique = false, nullable = false, insertable = true, updatable = true, length = 50)
	private String areaNname;

	@Column(name = "lat", unique = false, nullable = false, insertable = true, updatable = true, length = 10, precision = 6)
	private Float lat;

	@Column(name = "lng", unique = false, nullable = false, insertable = true, updatable = true, length = 10, precision = 6)
	private Float lng;

	@Column(name = "north", unique = false, nullable = false, insertable = true, updatable = true, length = 10, precision = 6)
	private Float north;

	@Column(name = "south", unique = false, nullable = false, insertable = true, updatable = true, length = 10, precision = 6)
	private Float south;

	@Column(name = "east", unique = false, nullable = false, insertable = true, updatable = true, length = 10, precision = 6)
	private Float east;

	@Column(name = "west", unique = false, nullable = false, insertable = true, updatable = true, length = 10, precision = 6)
	private Float west;

	@Column(name = "is_disabled", unique = false, nullable = false, insertable = true, updatable = true)
	private Boolean disabled;

	public Region() {
		super();
	}

	public Region(String id) {
		setId(id);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRome() {
		return rome;
	}

	public void setRome(String rome) {
		this.rome = rome;
	}

	public String getSzCode() {
		return szCode;
	}

	public void setSzCode(String szCode) {
		this.szCode = szCode;
	}

	public String getZmCode() {
		return zmCode;
	}

	public void setZmCode(String zmCode) {
		this.zmCode = zmCode;
	}

	public Byte getLevel() {
		return level;
	}

	public void setLevel(Byte level) {
		this.level = level;
	}

	public Region getParent() {
		return parent;
	}

	public void setParent(Region parent) {
		this.parent = parent;
	}

	

	public String getProvinceNname() {
		return provinceNname;
	}

	public void setProvinceNname(String provinceNname) {
		this.provinceNname = provinceNname;
	}

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public String getCityNname() {
		return cityNname;
	}

	public void setCityNname(String cityNname) {
		this.cityNname = cityNname;
	}

	public String getCountyId() {
		return countyId;
	}

	public void setCountyId(String countyId) {
		this.countyId = countyId;
	}

	public String getCountyNname() {
		return countyNname;
	}

	public void setCountyNname(String countyNname) {
		this.countyNname = countyNname;
	}

	public String getClusterId() {
		return clusterId;
	}

	public void setClusterId(String clusterId) {
		this.clusterId = clusterId;
	}

	public String getClusterNname() {
		return clusterNname;
	}

	public void setClusterNname(String clusterNname) {
		this.clusterNname = clusterNname;
	}

	public String getAreaId() {
		return areaId;
	}

	public void setAreaId(String areaId) {
		this.areaId = areaId;
	}

	public String getAreaNname() {
		return areaNname;
	}

	public void setAreaNname(String areaNname) {
		this.areaNname = areaNname;
	}

	public Float getLat() {
		return lat;
	}

	public void setLat(Float lat) {
		this.lat = lat;
	}

	public Float getLng() {
		return lng;
	}

	public void setLng(Float lng) {
		this.lng = lng;
	}

	public Float getNorth() {
		return north;
	}

	public void setNorth(Float north) {
		this.north = north;
	}

	public Float getSouth() {
		return south;
	}

	public void setSouth(Float south) {
		this.south = south;
	}

	public Float getEast() {
		return east;
	}

	public void setEast(Float east) {
		this.east = east;
	}

	public Float getWest() {
		return west;
	}

	public void setWest(Float west) {
		this.west = west;
	}

	public Boolean getDisabled() {
		return disabled;
	}

	public void setDisabled(Boolean disabled) {
		this.disabled = disabled;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Region)) {
			return false;
		}
		Region that = (Region) o;
		if (this.getId() != null && that.getId() != null) {
			return new EqualsBuilder().append(this.getId(), that.getId())
					.isEquals();
		}
		return false;
	}

	@Override
	public int hashCode() {
		if (this.getId() != null) {
			return new HashCodeBuilder().append(getId()).toHashCode();
		} else {
			return 0;
		}
	}

	@Override
	public String toString() {
		if (this.getId() != null) {
			return new ToStringBuilder(this).append("id", getId()).toString();
		} else {
			return null;
		}
	}

}
